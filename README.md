This repo is a demonstration of the current sizes of an app with `relay` vs `apollo-client` vs `lokka`.

A `react` + `react-dom` base is used as a comparison. Each library is then added and the resulting bundle sizes are compared.

Run `sh sizes.sh` to generate:
```
React base size is: 43KiB
Marginal size of relay after min and gzip: 74KiB
Marginal size of apollo after min and gzip: 23KiB
Marginal size of lokka after min and gzip: 229KiB
```
