# topocity ![Status Badge - Travis CI](https://travis-ci.com/polaretto/topocity.svg?branch=master)
Towards topological representation of smart cities environment: a Putback BX approach towards **Bigraphs** from **CityGML**.
Powered by [BiGUL][5d8ff35d].

## NII-PKU-Milano Joint Workshop on Modeling and Management of Adaptivity
Slides of the presentation are  available here: [PPT - OneDrive.com][d0df7ec1]

## Demo
After installing the dependencies, execute the following commands in the REPL:

### Loading the CityGML _Source_

```haskell
source = load "in.gml" "topo.gml"
```

### Showing the result of _Get_

```haskell
view = source >>> getSync
display view -- prints the result
```

### Changing the _View_

```haskell
view'  = view >>> addBuilding "demo1"
view'' = view' >>> removeBuilding "bc8a0f2b5-031b-11e6-b420-2bdcc4ab5d7f"
display view'' -- prints the result
```

### Reflecting the changes back to source with _Put_

```haskell
source' = source &&& view'' >>> putSync
```

### Storing back the new _Source_

```haskell
store source' "out.gml" "tout.gml"
```

## Development

### Testing & Code Analysis
:warning: _Note: Unless otherwise specified, all commands are meant to be executed at the root of the project and require the [Stack platform][45cc488c]._

---
To run the code coverage of the testing platform run in your OS's CLI:

```sh
stack test --ghc-options "-fforce-recomp" --coverage
```

and of course to just run the tests you can skip the `--coverage` flag.

### Generate package dependency graph
In order to generate the dependency graph (in this case the trivial dependency on the `base` package has been excluded):

```sh
stack dot --no-include-base --external | dot -Tpng -o out/wreq.png
```

### Generate documentation

To generate the updated documentation, you can write in the same way:

```sh
stack haddock
```

While to generate the report of the Lines of Code (Windows-only), open a terminal at the `tools` directory and execute:
```sh
cloc.exe ../src ../test --report-file=reports/cloc_%DATE%.txt
```

[45cc488c]: https://haskellstack.org "Haskell Stack Website"

[5d8ff35d]: https://bitbucket.org/prl_tokyo/bigul/ "BiGUL: The Bidirectional Generic Update Language"

[d0df7ec1]: https://1drv.ms/p/s!AnET_cFHzelg314Drc5QfjA_R2hd "Topocity Slides"
