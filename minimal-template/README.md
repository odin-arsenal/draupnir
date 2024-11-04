# 💍  [Draupnir Minimal Project Template](https://github.com/odin-arsenal/draupnir)


[Draupnir](https://github.com/odin-arsenal/draupnir) a magical ring that symbolizes prosperity and abundance. Every ninth night, Draupnir would produce eight new rings of the same size and weight, adding to Odin’s wealth and power. This magical ring adds to the allure of Odin’s arsenal and the mythology that surrounds it.

In the same spirit, this project adds to Odin's wealth and power by scaffolding `Odin` projects.

## Odin's Arsenal

This project is part of the [Odin's Arsenal](https://github.com/odin-arsenal/draupnir).

## Usage

Use this template as a base to create your own [Odin Projects](https://odin-lang.org/).
This template contains only the bare minimum to create a good _Odin Project_.

## Run Script

The project provides a [_./run_](run) script to ease commands:

- `./run build.project`: Builds the `project.odin` file
- `./run build.debug`: Builds the `lib` package.
- `./run build.release`: Builds the `lib` package and store it in `dist`.
- `./run project`: Runs the `project` binary. You can pass arguments.
- `./run lib`: Runs the `lib` binary. You can pass arguments.
- `./run version`: Builds the `lib` package and runs the `--version` command.
- `./run hooks`: Install hooks to `.git` directory.
- `./run format`: Runs format and lint in the codebase.
- `./run docs`: Generates documentation using `Gungnir`.
- `./run deps.get`: Downloads git submodules inside `deps`.
- `./run test`: Run tests.

## Docs

Documentation can be generated with [Gungnir](https://github.com/odin-arsenal/gungnir).

## Project Collection

In order to simplify the structure a collection is passed down to odin called `project`
that points to the root directory.

**Before**

```odin
import "../../../config"
```

**After**

```odin
import "project:config"
```

## Main Files: project.odin and lib/lib.odin

- `project.odin`: This file is used for commands or other project related procedures. By default is an alias of `lib/lib.odin` main procedure. But can be modified as a special build, different from `lib.odin`. Is used mainly to identify the directory as an `odin` project.

- `lib/lib.odin`: This file is were the main application code is stored, contains its own main procedure.

## License

- BSD-3

## Credits

<p>
  Made with <i class="fa fa-heart">&#9829;</i> by
  <a href="https://ninjas.cl">
    Ninjas.cl
  </a>.
</p>
