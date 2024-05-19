from flask import Flask, request, render_template, send_file, make_response

from bs4 import BeautifulSoup
from phantomjs import Phantom

from utils import cors
from utils import validation

import os
import tempfile
import secrets
import html5lib

app = Flask(__name__,
            static_url_path='/public', 
            static_folder='public',
            template_folder='templates')

app.secret_key = secrets.token_urlsafe(16)
app.config['SESSION_COOKIE_HTTPONLY'] = False

PDF_FILE_PATH = '/tmp/generated.pdf'

def sanitize_xss(html):
    soup = BeautifulSoup(html, 'html5lib')

    # Remove all tags that could lead to XSS
    xss_tags = [
        soup.findAll('img'),
        soup.findAll('image'),
        soup.findAll('script'),
        soup.findAll('style'),
        soup.findAll('meta'),
        soup.findAll('iframe'),
        soup.findAll('embed'),
        soup.findAll('object'),
        soup.findAll('svg')
    ]

    for tag_list in xss_tags:
        for tag in tag_list:
            tag.extract()

    # Remove the attributes from the body
    REMOVE_ATTRIBUTES = ['onafterprint', 'onafterscriptexecute', 'onanimationcancel', 'onanimationend', 'onanimationiteration', 'onanimationstart', 'onauxclick', 'onbeforecopy', 'onbeforecut', 'onbeforeinput', 'onbeforeprint', 'onbeforescriptexecute', 'onbeforetoggle', 'onbeforeunload', 'onbegin', 'onblur', 'onbounce', 'oncanplay', 'oncanplaythrough', 'onchange', 'onclick', 'onclose', 'oncontextmenu', 'oncopy', 'oncuechange', 'oncut', 'ondblclick', 'ondrag', 'ondragend', 'ondragenter', 'ondragexit', 'ondragleave', 'ondragover', 'ondragstart', 'ondrop', 'ondurationchange', 'onend', 'onended', 'onerror', 'onfinish', 'onfocus', 'onfocusin', 'onfocusout', 'onformdata', 'onfullscreenchange', 'onhashchange', 'oninput', 'oninvalid', 'onkeydown', 'onkeypress', 'onkeyup', 'onload', 'onloadeddata', 'onloadedmetadata', 'onloadstart', 'onmessage', 'onmousedown', 'onmouseenter', 'onmouseleave', 'onmousemove', 'onmouseout', 'onmouseover', 'onmouseup', 'onmousewheel', 'onmozfullscreenchange', 'onpagehide', 'onpageshow', 'onpaste', 'onpause', 'onplay', 'onplaying', 'onpointerdown', 'onpointerenter', 'onpointerleave', 'onpointermove', 'onpointerout', 'onpointerover', 'onpointerrawupdate', 'onpointerup', 'onpopstate', 'onprogress', 'onratechange', 'onrepeat', 'onreset', 'onresize', 'onscroll', 'onscrollend', 'onsearch', 'onseeked', 'onseeking', 'onselect', 'onselectionchange', 'onselectstart', 'onshow', 'onstart', 'onsubmit', 'onsuspend', 'ontimeupdate', 'ontoggle', 'ontoggle(popover)', 'ontouchend', 'ontouchmove', 'ontouchstart', 'ontransitioncancel', 'ontransitionend', 'ontransitionrun', 'ontransitionstart', 'onunhandledrejection', 'onunload', 'onvolumechange', 'onwebkitanimationend', 'onwebkitanimationiteration', 'onwebkitanimationstart', 'onwebkittransitionend', 'onwheel']
    for attribute in REMOVE_ATTRIBUTES:
        for tag in soup.findAll(attribute=True):
            del(tag[attribute])

    return soup.prettify()

def generate_pdf(content):
    temp_file = tempfile.NamedTemporaryFile(delete=False, suffix='.html')
    
    try:
        safe_content = sanitize_xss(content)
        html = '''
        <html>
            <head>
                <style>
                    #nbHPlus {{
                        display: none;
                    }}
                    .main {{
                        margin-top: 50%;
                        text-align: center;
                    }}
                </style>
            </head>
            <body>
                {}
            </body>
        </body>
        '''.format(content)

        temp_file.write(html.encode())
        temp_file.close()

        phantom = Phantom()

        conf = { 'url': 'file://{}'.format(temp_file.name) }
        pdf = phantom.download_page(conf, js_path='./html-to-pdf.js')
        return pdf
    finally:
        if os.path.exists(temp_file.name):
            os.remove(temp_file.name)

@app.route('/', methods=['GET'])
def index():
    return render_template('index.html')

@app.route('/pdf', methods=['POST'])
def pdf():
    user_input = request.form.get('text')
    generate_pdf(user_input)

    file_handle = open(PDF_FILE_PATH, 'rb')

    def stream_and_remove_file():
        yield from file_handle
        file_handle.close()
        os.remove(PDF_FILE_PATH)

    return app.response_class(
        stream_and_remove_file(),
        headers={'Content-Disposition': 'attachment; filename="protons.pdf";'}
    )

@app.route('/api/flag', methods=['POST', 'OPTIONS'])
def flag():
    is_admin = request.form.get('is_admin', default=False, type=validation.is_true)

    if request.method == "OPTIONS": # CORS preflight
        return cors.build_cors_preflight_response()
    elif request.method == "POST":
        if is_admin:
            return cors.corsify_actual_response(make_response('INSERT-ME-WHEN-GENERATED'))
        else:
            return cors.corsify_actual_response(make_response('Cannot obtain the flag without being an administrator', 500))
