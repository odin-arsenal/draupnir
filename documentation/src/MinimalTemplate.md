# [Minimal Template](https://github.com/odin-arsenal/draupnir/tree/main/minimal-template)

This project template have only the minimum directories and files needed for _Gungnir_ (`lib` and `project.odin`), so it can generate documentation. Also contains common files such as: `.gitignore`, `.editorconfig` and a sample `README.md` and `test` directory.

## When to Use?

Use this template if you want a lean starting point with just a `lib` and `project.odin` directories.
Ideal for experiments, simple applications or want to tailor the structure at will. It includes the `run` script that enables the `-collection:project=.` param, and can build `debug` and `release` versions of `project.odin`.

- Simple command lines and scripts.
- Simple libraries.
- Not many contributors.

- [See the contents of the minimal template](https://github.com/odin-arsenal/draupnir/tree/main/minimal-template).

## Instalation

```shell
$ draupnir minimal my-project
```

## Structure

3 directories, 9 files

```text
.
├── .editorconfig
├── .gitattributes
├── .gitignore
├── README.md
├── lib
│   └── application.odin
├── project.odin
├── run
└── test
    ├── lib_test.odin
    └── test_helper.odin
```

## Structure and Files

In the `full` project template you can find these files and directories. In `minimal` template just a few of them are present.

- `lib`: A directory that holds your application source code. This directory can be broken into subdirectories (packages).

- `test`: Directory with all of your application tests. It often mirrors the same structure found in `lib`.

- `run`: A bash script to run helper commands.

- `_build`:  A directory created by the run command line tool that ships as part of _Draupnir_ that holds all compilation artifacts. This directory must not be checked into version control and it can be removed at any time. Removing it will force the project to rebuild your application from scratch.

- `bin`:  A directory created by the run command line tool that ships as part of _Draupnir_ that holds all compilation artifacts for *Release* environment. This directory must not be checked into version control and it can be removed at any time. Removing it will force the project to rebuild your application from scratch.

- `test/test_helper.odin`: A file to set variables and other global settings for the tests.
- `test/lib_test.odin`: An example test file.

## Run Script

The `full` and `minimal` templates provides a [_./run_](run) script to ease commands:

- `./run build.debug`: Builds the `project.odin` file in debug mode.
- `./run build.release`: Builds the `project.odin` file in production mode and store it in `bin`.
- `./run project`: Runs the `project` binary. You can pass arguments.
- `./run version`: Builds the `debug` binary and runs the `-v` command.
- `./run format`: Runs format and lint in the codebase.
- `./run docs`: Generates documentation using `Gungnir`.
- `./run deps.get`: Downloads git submodules inside `deps`.
- `./run test`: Run tests.

## Project Collection

The `minimal` template provides a collection is passed down to `odin` called `project`
that points to the root directory.

**Before**

```odin
import "../../../config"
```

**After**

```odin
import "project:config"
```

## Env Define

Minimal templates can use a define named `env` is pass down in build scripts
that can be used for special setting in different build configurations.

```odin
 #config(env, "dev")
 ```