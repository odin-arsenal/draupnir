## Why use Draupnir Templates?

These templates have in common the `project.odin` file and the `lib` directory. These are the core structures that a _Draupnir_ template requires. Following these conventions, many tools can have a common standard and help the community understand quicker and better _Odin_ codebases. For example the [`Gungnir`](https://github.com/odin-arsenal/gungnir) tool can assume the codebase contains at minimum a `project.odin` file and a `lib` directory and start searching for files to document inside the `lib` directory. This convention simplifies many decisions and make tools more thoughtful and friendly.

### Conventions

_Draupnir_ follows some basic structure for applications in _Odin_.

#### lib/ directory

`lib` directory holds your application source code. This directory is broken into subdirectories (_packages_). For example, the `lib/domain` directory will be responsible to host all of your business logic and business domain.

It was chosen `lib` instead of `src` because the main application `project.odin` requires this directory as a "library".

#### project.odin file

This is a file that identifies our directory as an _Odin_ project. It also contains the `main :: proc()` declaration. In `full` template is used to define common data structures such as command line arguments, logger and project.ini configurations.

#### CamelCase package names

Package naming doesn’t need to be a mirror of your OS directories. It’s good when it can, but we don’t need to ruin their naming for the sake of the OS system.

For example

```text
└── controllers
    ├── account_controller.odin
    ├── bread_controller.odin
    └── user_controller.odin
```

Te package must be named like `Project_User_Controller`, and not `project_user_controller`. The convention for naming packages is using `CamelCase` and separate each word with underscore.

### Where these conventions comes from?

This convention takes inspiration and ideas from battle tested projects found in other languages and tools such as:

- [Elixir Mix](https://hexdocs.pm/elixir/introduction-to-mix.html#our-first-project). Base idea for the "minimal template".
- [Phoenix Framework](https://hexdocs.pm/phoenix/directory_structure.html). Base idea for the "full template".
- [Gleam](https://gleam.run/writing-gleam/). Base idea for the `project.ini`.

### State of the Art

_Odin_ ecosystem seeems to not have an standard way of file and project organization. 
Let's analyze a bunch of _Odin_ projects randomly selected:

**Podin**

![Podin](https://github.com/user-attachments/assets/a60c0d73-9694-4971-a7c7-a7194d29e62e)

- https://codeberg.org/mgavioli/podin

**Odin Aseprite**

![Odin Aseprite](https://github.com/user-attachments/assets/6245ee77-ba81-48a9-bf0e-7ef250cf2c08)

- https://github.com/blob1807/odin-aseprite


**Odin Mimalloc**

![Odin Mimalloc](https://github.com/user-attachments/assets/6245ee77-ba81-48a9-bf0e-7ef250cf2c08)

- https://github.com/jakubtomsu/odin-mimalloc

**Odin HTTP**

![Odin HTTP](https://github.com/user-attachments/assets/47253d01-e34c-48a9-9f7a-eec5183bd585)

- https://github.com/laytan/odin-http

A standarization will help the creation of tools such as IDEs, documentation and other developer experience improvements, increase the speed of understanding the codebase by new people and provide a solid structure for making projects with Odin. Using conventions such as the provided by _Draupnir_ will speed up the development efforts of Odin's ecosystem.