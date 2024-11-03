# 💍  [Draupnir Project Template](https://github.com/odin-arsenal/draupnir)

Draupnir, a magical ring that symbolizes prosperity and abundance. Every ninth night, Draupnir would produce eight new rings of the same size and weight, adding to Odin’s wealth and power. This magical ring adds to the allure of Odin’s arsenal and the mythology that surrounds it.

## Odin's Arsenal

This project is part of the [Odin's Arsenal Project](https://github.com/odin-arsenal/draupnir)

## Usage

Use this template as a base to create your own [Odin Projects](https://odin-lang.org/).

## Structure and Files

- `lib`: Directory where all the main packages will be stored.
- `test`: Directory where all the tests will be stored.
- `priv`: Directory where all the private files would exist.
- `deps`: Directory for all external libraries and vendored code.
- `docs`: Documentation generated to be available in Github Pages or similar.
- `lib.docg`: `Gungnir` documentation catalogue.
- `SUMMARY.md`: A file used in `Gungnir` to generate a menu.
- `.tool-versions`: `asdf-vm` version declaration of tools for this project.
- `.version`: A number indicating the current version (for CI purposes).
- `run`: A bash script to run the `lib` executable.
- `project`: A bash script to run the `project` executable.
- `_build`: hidden directory for storing project build files
- `dist`: hidden directory for storing release builds.
- `.hooks`: store git hooks for linting and formatting odin projects.
- `config`: Stores configuration settings for different environments: dev, prod, runtime, test.
- `resources`: Stores different static assets like images or scripts needed for the application.
- `priv/documentation`: A `Gungnir` directory to store the amalgamated documentation before `mdbook` compilation.

## Makefile

The project provides a _Makefile_ to ease commands:

- `make docs`: Generates documentation using `Gungnir`.
- `make build.project`: Builds the `project.odin` file
- `make build.lib`: Builds the `lib` package.
- `make release`: Builds the `lib` package and store it in `dist`.
- `make version`: Builds the `lib` package and runs the `--version` command.
- `make hooks`: Install hooks to `.git` directory.

## License

- BSD-3

## Credits

<p>
  Made with <i class="fa fa-heart">&#9829;</i> by
  <a href="https://ninjas.cl">
    Ninjas.cl
  </a>.
</p>
