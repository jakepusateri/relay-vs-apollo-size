webpackMinGzip () {
    node_modules/.bin/webpack --entry ./index-$1.js --output-filename out-$1.js > /dev/null
    echo $1 "size in bytes after min and gzip:"
    node_modules/.bin/uglifyjs out-$1.js -c -m 2>/dev/null  | gzip -c | wc -c
}
webpackMinGzip react
webpackMinGzip relay
webpackMinGzip apollo
