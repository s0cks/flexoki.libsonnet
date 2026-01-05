# flexoki.libsonnet

> This repository contains [Jsonnet](https://jsonnet.org/) code for working w/ the [Flexoki](https://stephango.com/flexoki) color palette

<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->

- [Dependencies](#dependencies)
- [Including in a Jsonnet project](#including-in-a-jsonnet-project)
  - [Using git submodules](#using-git-submodules)
- [Generating color palettes](#generating-color-palettes)
- [License](#license)
- [Contributing](#contributing)

<!-- END doctoc generated TOC please keep comment here to allow auto update -->

## Dependencies

You will need the following

- [jsonnet](https://jsonnet.org/)
- [task](https://taskfile.dev/) `Optional, makes working w/ Jsonnet easier`

## Including in a Jsonnet project

### Using git submodules

First you need to add this as a submodule to your git repo:

```sh
git submodule add https://github.com/s0cks/flexoki.libsonnet
```

Then you will need to include this using the `-J` flag when running Jsonnet:

```sh
# ex:
jsonnet \
    -J flexoki.libsonnet/ \
    ....
```

Now you can import this in your Jsonnet projects like such:

```libsonnet
// import the lib:
local flexoki = import 'lib/flexoki.libsonnet';
// for the dark palette:
local FlexokiDarkPalette = flexoki.Dark;
// for the light palette:
local FlexokiLighPalette = flexoki.Light;
....
```

## Generating color palettes 

You can generate a set of json files containing all the colors and aliases available for both the dark & light variants:

Using task:

```sh
task # default, runs: task build
# or
task default
# or
task build
```
Manually:

```sh
jsonnet \
    -J . \
    -S \
    -m . \
    flexoki.jsonnet
```

check the generated palettes:

```sh
 cat palette-dark.json
 # or
 cat palette-light.json
 ```

## Credits

- [@kepano](https://github.com/kepano) for the [Flexoki](https://stephango.com/flexoki) color palette

## License

See [LICENSE](LICENSE)

## Contributing

See [Contributing](Contributing.md)
