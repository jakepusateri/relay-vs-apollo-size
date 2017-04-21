rm out-* -f
node_modules/.bin/webpack -p --entry ./index-react.js --output-filename out-react.js > /dev/null
REACT_BASE_SIZE=`cat out-react.js | gzip -c | wc -c`
echo "React base size is:" `numfmt --to=iec-i --suffix=B $REACT_BASE_SIZE`

webpackMinGzip () {
    node_modules/.bin/webpack -p --entry ./index-$1.js --output-filename out-$1.js > /dev/null
    SIZE=`cat out-$1.js | gzip -c | wc -c`
    MARGINAL_SIZE=`expr $SIZE - $REACT_BASE_SIZE`
    echo "Marginal size of $1 after min and gzip:" `numfmt --to=iec-i --suffix=B $MARGINAL_SIZE`
}
webpackMinGzip relay-classic
webpackMinGzip relay-modern
webpackMinGzip apollo
