# [Full Template](full-template)

This project template have all the bells and whistles of a complete project: Readmes, Changelogs, dependency directory, docs, private directores, and other directories and files. Normally used in complex applications and command line apps.

## When to Use?

Use this template if you want a complete project from the start. It provides a good and strong structure for big applications to grow.  It includes the `run` script that enables the `-collection:project=.` param, and can build `debug` and `release` versions of both `project.odin`.

- [See the contents of the Full Template](full-template).

## Components

The `full` project contains an additional component called `tasks` which help creating command line apps by parsing the arguments and providing a common structure for running tasks.

### Tasks

A task can be defined by creating a new package inside `lib/tasks`, and which defines the `run` procedure.
The `run` procedure will receive a list of all command line arguments passed, according to the user's terminal.
You can use these tasks in `project.odin` as a way to access internal lib data or procedures.

**Example Task**

```odin
package Tasks_Version

import "core:fmt"
import "project:config"
import "../options"

run :: proc(args: options.Options) {
  fmt.printfln("%s\n%s\n%s", config.COPYRIGHT, config.AUTHORS, config.WEBSITE)
}
```

### Logger

### Project configuration (project.ini)


## Structure and Files

In the `full` project template you can find these files and directories. In `minimal` template just a few of them are present.

- `lib`: A directory that holds your application source code. This directory can be broken into subdirectories (packages).

- `test`: Directory with all of your application tests. It often mirrors the same structure found in `lib`.

- `priv`: A directory that keeps all resources that are necessary in production but are not directly part of your source code. You typically keep database scripts, translation files, images, and more in here. Generated assets, created from _Gungnir_ are placed in `priv/documentation` by default.

- `deps`: Directory for all dependencies (external libraries and vendored code) of your application. It normally contains _Git Submodules_.

- `docs`: Documentation generated to be available in Github Pages or similar.

- `lib.docg`: `Gungnir` documentation catalogue.

- `SUMMARY.md`: A file used in `Gungnir` to generate a menu.
- `README.md`: The main _README_ of the project.
- `AUTHORS.md`: Who is the team behind the project.
- `CHANGELOG.md`: Which changes the project had overtime.
- `LICENSE.md`: What license the project adheres to?.
- `CONTRIBUTING.md`: A quick introducction to the project, tailored for developers.

- `project.ini`: A simple `*.ini` configuration file to store metadata about the project. Like version number and project name. May be used by tools such as _Gungnir_ to obtain information about the project.

- `.tool-versions`: `asdf-vm` version declaration of tools for this project.

- `run`: A bash script to run helper commands.

- `_build`:  A directory created by the run command line tool that ships as part of _Draupnir_ that holds all compilation artifacts. This directory must not be checked into version control and it can be removed at any time. Removing it will force the project to rebuild your application from scratch.

- `bin`:  A directory created by the run command line tool that ships as part of _Draupnir_ that holds all compilation artifacts for *Release* environment. This directory must not be checked into version control and it can be removed at any time. Removing it will force the project to rebuild your application from scratch.

- `.hooks`: store git hooks for linting and formatting odin projects.

- `config/`: A directory that holds your project configuration. The `config/config.odin` file is the entry point for your configuration. 
- `config/config.odin`: Stores configuration settings for different environments: dev, prod, runtime, test.
- `config/runtime.odin`: Used for setting or getting Environment variables and other runtime only settings.

- `resources`: Stores different static assets like images needed for the application.
- `priv/documentation`: A `Gungnir` directory to store the amalgamated documentation before `mdbook` compilation.
- `priv/scripts`: Project helpful shell scripts for diverse tasks.
- `priv/logs`: Project log registry.
- `test/test_helper.odin`: A file to set variables and other global settings for the tests.
- `test/lib_test.odin`: An example test file.

## Full Run Script

The `full` and `minimal` templates provides a [_./run_](run) script to ease commands:

- `./run build.debug`: Builds the `project.odin` file in debug mode.
- `./run build.release`: Builds the `project.odin` file in production mode and store it in `bin`.
- `./run project`: Runs the `project` binary. You can pass arguments.
- `./run version`: Builds the `debug` binary and runs the `-v` command.
- `./run hooks`: Install hooks to `.git` directory.
- `./run format`: Runs format and lint in the codebase.
- `./run docs`: Generates documentation using `Gungnir`.
- `./run deps.get`: Downloads git submodules inside `deps`.
- `./run test`: Run tests.

## Project Collection

The `full` and `minimal` templates provides a collection is passed down to `odin` called `project`
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

Both `full` and `minimal` templates can use a define named `env` is pass down in build scripts
that can be used for special setting in different build configurations
(in full template inside `config/config.odin`).

```odin
when ENVIRONMENT == "dev" {

}

when ENVIRONMENT == "prod" {

}

when ENVIRONMENT == "test" {

}
```