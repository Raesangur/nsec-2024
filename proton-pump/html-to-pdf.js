var system = require('system');
var json = JSON.parse(system.args[1]);
var url = json.url;

var page = require('webpage').create();

page.open(url, function() {
    var nbHPlus = page.evaluate(function(s) {
            return document.getElementById(s).innerText;
        }, 'nbHPlus');

    page.paperSize = {
        width: '8.5in',
        height: '11in',
        header: {
            height: "1cm",
            contents: phantom.callback(function() {
                var ret = "<header style='text-align: center;'>" + nbHPlus + "</header>";
                return ret
            })
        },
        footer: {
            height: "1cm",
            contents: phantom.callback(function(pageNum, numPages) {
            return "<span style='float:right'>" + pageNum + " / " + numPages + "</span>";
            })
        }
    }

    page.render('/tmp/generated.pdf');
    phantom.exit();
});