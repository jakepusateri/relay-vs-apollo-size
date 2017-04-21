This repo is a demonstration of the current sizes of an app with `relay` vs `apollo-client` vs `lokka`.

A `react` + `react-dom` base is used as a comparison. Each library is then added and the resulting bundle sizes are compared.

Run `sh sizes.sh` to generate:
```
React base size is: 43KiB
Marginal size of relay-classic after min and gzip: 78KiB
Marginal size of relay-modern after min and gzip: 32KiB
Marginal size of apollo after min and gzip: 25KiB
```
