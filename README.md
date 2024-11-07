# 💍  [Draupnir Project Templates](https://github.com/odin-arsenal/draupnir)

[Draupnir](https://github.com/odin-arsenal/draupnir) is a magical ring that symbolizes prosperity and abundance. Every ninth night, Draupnir would produce eight new rings of the same size and weight, adding to Odin’s wealth and power. This magical ring adds to the allure of Odin’s arsenal and the mythology that surrounds it.

In the same spirit, this project adds to Odin's wealth and power by scaffolding `Odin` projects.

## Odin's Arsenal

This project is part of the [Odin's Arsenal](https://github.com/odin-arsenal/draupnir).

----

## How to Download

Download `draupnir` templates with a quick curl command.
Ensure to download the `tar.gz` version to preserve file permissions.

```sh
$ curl -L https://github.com/odin-arsenal/draupnir/archive/refs/heads/main.tar.gz -o templates.tar.gz
```

Untar the file and rename the template directory of your liking. 
You can remove the other files and directories.

```sh
$ tar –xvzf templates.tar.gz
$ mv draupnir-main/minimal-template my-project
$ rm -rf draupnir-main
$ rm -rf templates.tar.gz
$ cd my-project
```

## Draupnir Command

The steps above were automated in a bash script.
You can download it and put it inside `/usr/local/bin` 

```sh
$ curl -L https://github.com/odin-arsenal/draupnir/releases/download/v1.0.0/draupnir.tar.gz -o draupnir.tar.gz
$ tar xvzf draupnir.tar.gz
$ cp draupnir /usr/local/bin
```

Now you can create templates with `draupnir` command.

```sh
$ draupnir <template> <new-project-directory>
```

**Examples**

```sh
$ draupnir full my-new-project
$ draupnir minimal my-new-project
$ draupnir blank my-new-project
```

## Why use Draupnir Templates?

These templates have in common the `project.odin` file and the `lib` directory. These are the core structures that a _Draupnir_ template requires. Following this convention, many tools can have a common standard and help the community understand quicker and better _Odin_ codebases. For example the [`Gungnir`](https://github.com/odin-arsenal/gungnir) tool can assume the codebase contains at minimum a `project.odin` file and a `lib` directory and start searching for files to document inside the `lib` directory. This convention simplifies many decisions and make tools more thoughtful and friendly.

### Where this convention comes from?

This convention takes inspiration and ideas from battle tested projects found in other languages and tools such as:

- [Elixir Mix](https://hexdocs.pm/elixir/introduction-to-mix.html#our-first-project).
- [Phoenix Framework](https://hexdocs.pm/phoenix/directory_structure.html).
- [Gleam](https://gleam.run/writing-gleam/)
- [Ruby on Rails](https://guides.rubyonrails.org/getting_started.html#creating-the-blog-application).
- [Vapor](https://docs.vapor.codes/getting-started/folder-structure/)

### project.odin

This file is used for commands or other project related procedures. By default is an alias of `lib/lib.odin` main procedure. But can be modified as a special build, different from `lib.odin`. Is used mainly to identify the directory as an `odin` project. However can be used as the main file of the project instead of `lib.odin`.

### lib/

A directory that holds your application source code. It's required by the _Draupnir_ template convention.

### lib/lib.odin 

This file is were the main procedure code is stored or just be a library of procedures, enums, types, constants for the `project.odin` file to use. It's optional to be named `lib.odin` since the only requirement is the `lib` directory.

## [Full Template](full-template)

This project template have all the bells and whistles of a complete project: Readmes, Changelogs, dependency directory, docs, private directores, and other directories and files. Normally used in complex applications and command line apps.

### When to Use?

Use this template if you want a complete project from the start. It provides a good and strong structure for big applications to grow.  It includes the `run` script that enables the `-collection:project=.` param, and can build `debug` and `release` versions of both `project.odin` and `lib`.

- [See the contents of the Full Template](full-template).

### Components

The `full` project contains an additional component called `tasks` which help creating command line apps by parsing the arguments and providing a common structure for running tasks.

#### Tasks

A task can be defined by creating a new package inside `lib/tasks`, and which defines the `run` procedure.
The `run` procedure will receive a list of all command line arguments passed, according to the user's terminal.
You can use these tasks in `project.odin` as a way to access internal lib data or procedures.

**Example Task**

```odin
package lib_tasks_version

import "core:fmt"
import "project:config"
import "../options"

run :: proc(args: options.Options) {
  fmt.printfln("%s\n%s\n%s", config.COPYRIGHT, config.AUTHORS, config.WEBSITE)
}
```

## [Minimal Template](minimal-template)

This project template have only the minimum directories and files needed for _Gungnir_ (`lib` and `project.odin`), so it can generate documentation. Also contains common files such as: `.gitignore`, `.editorconfig` and a sample `README.md` and `test` directory.

### When to Use?

Use this template if you want a lean starting point with just a `lib` and `project.odin` directories.
Ideal for experiments, simple applications or want to tailor the structure at will. It includes the `run` script that enables the `-collection:project=.` param, and can build `debug` and `release` versions of both `project.odin` and `lib`.

- [See the contents of the minimal template](minimal-template).

## [Blank Template](blank-template)

This project template only contains: `lib/`, `project.odin`, `.gitignore` and `README.md`.
It's the most lean possible template compatible with _Gungnir_. Besides the `lib` and `project.odin` directories
is up to you to set the contents and structure of the project.

- [See the contents of a blank template](blank-template).

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
- `test/test_helper.odin`: A file to set variables and other global settings for the tests.
- `test/lib_test.odin`: An example test file.

## Full Run Script

The `full` and `minimal` templates provides a [_./run_](run) script to ease commands:

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

## Structuring Applications

The rule of thumb when structuring applications, is to allow the top-level directories to directly communicate with layer below, but any communication crossing more than one line is forbidden. As an example, `project.odin` can retrieve packages in `lib/tasks`. Reaching out from `lib/tasks` to `project.odin` is - however - strictly forbidden.

The rule of thumb that’s worth following is trying to keep the directory structure as flat as it is possible and manageable. You don’t really need to type more than necessary when opening/saving files - as long as there is sane number of files in a directory. There is no need to multiply subdirectories for the sake of multiplying subdirectories.

The whole idea is to have packages that work as an entry point for your app’s business. Then, all sub-entities for that aspect live there, on inner files and directories. It’s like your lib has sub-libraries. Then your sub-library has a main interface that lives on an entry point package. The main reasoning is thinking about the deletion and moving. If you want to move a package to another directory, all its files should move together. See the entry point purpose working like an index file in a web server directory, and usually, the index files live in the directory as children, not as siblings.

```text
lib/social_network
    └── authentication
            ├── authentication.odin
            ├── google.odin
            ├── facebook.odin
            └── password.odin
```

### Avoid namespacing

Some kinds of files fit in one or more categories and do not belong exclusively to a common package. For example, errors, your app might have several packages that represent errors. Let’s say you have multiple errors in your app: argument, arithmetic, not found, etc. They are all errors, but they should not belong to a single "Error package". Instead of creating a namespace, you can use a suffix. Your naming would look like this:

- package.ArgumentError
- package.ArithmeticError
- package.NotFoundError
- package.TemporarilyUnavailableError

So they aren’t tied anymore to the unhelpful namespacing and concept "Error", now you’re free to move them to sub or parent applications as the time needs. As long as your project grows, these files that aren’t together conceptually might pollute your OS directories and make things hard to navigate. So it’s okay to organise your OS files and directories in a way that works better. 

### Package naming

Package naming doesn’t need to be a mirror of your OS directories. It’s good when it can, but we don’t need to ruin their naming for the sake of the OS system.

For example

```text
└── controllers
    ├── account_controller.odin
    ├── bread_controller.odin
    └── user_controller.odin
```

And the package is named `Project_User_Controller`, and not `Project_Controllers_User_Controller`.

The convention for naming packages is using `CamelCase` and separate each word with underscore.

## License

- BSD-3

## Credits

<p>
  Made with <i class="fa fa-heart">&#9829;</i> by
  <a href="https://ninjas.cl">
    Ninjas.cl
  </a>.
</p>