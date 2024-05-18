const fs = require('fs');
const path = require('path');

const serve = require('koa-static');
const { koaBody } = require('koa-body');

const Koa = require('koa');

const { execFile, execFileSync } = require("child_process");

const app = new Koa();

app.use(koaBody());

// serve files from ./public
app.use(serve(path.join(__dirname, '/public')));

// response
app.use(
  serve(path.join(__dirname, '/views'))
);

const WGET_BIN_PATH = '/usr/bin/wget'
const CHMOD_BIN_PATH = '/usr/bin/chmod'
const NGINX_PATH = '/var/www/nginx'
const STATIC_PATH = NGINX_PATH + '/static/tmp'

// Report Generation
app.use((ctx, _) => new Promise((resolve, _) => {
  // ignore non-POSTs
  if ('POST' != ctx.method) {
    ctx.status = 404;
    ctx.body = 'Not Found';
    
    return resolve(ctx.body);
  }

  const args = [
    '--no-cookies',
    '--timeout=120',
    '--tries=3',
    '--no-check-certificate',
    '-r',
    '-P',
    STATIC_PATH
  ];

  if (ctx.request.body && ctx.request.body.url) {
    // Make sure we can write our result in the tmp folder
    execFileSync(CHMOD_BIN_PATH, ['-R', '700', STATIC_PATH]);

    // Fetch our content
    execFile(WGET_BIN_PATH, args.concat(ctx.request.body.url), null, (err, _, stderr) => {
      if (!err && stderr.includes('Saving to: ‘')) {
        // If the program ran successfully, make sure we can read the file
        // and send the output in the HTTP response
        var filePath = stderr.split('Saving to: ‘')[1].split('’\n')[0];
        var file = fs.createReadStream(filePath);
        file.on('end', function() {
          fs.rmSync(path.dirname(filePath), { recursive: true, force: true });
        });
        ctx.type = 'hmtl';
        ctx.set('Content-type', 'text/html');
        ctx.body = file;

        return resolve(ctx.body);
      } else {
        ctx.status = 500;

        if (err) {
          ctx.body = err.stack;
        } else {
          ctx.body = "An unknown error has occured.";
        }

        // Make sure we cleanup the tmp folder just in case
        fs.readdirSync(STATIC_PATH).forEach(f => fs.rmSync(`${STATIC_PATH}/${f}`, { recursive: true, force: true }));

        return resolve(ctx.body);
      } 
    });
  } else {
    ctx.status = 500;
    ctx.body = 'Missing URL argument';
    
    return resolve(ctx.body);
  }
}));
 
if (!module.parent) app.listen(3000, "::1");