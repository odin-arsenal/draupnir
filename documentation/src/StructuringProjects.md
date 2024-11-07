# Structuring Odin Projects

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

## Avoid namespacing

Some kinds of files fit in one or more categories and do not belong exclusively to a common package. For example, errors, your app might have several packages that represent errors. Let’s say you have multiple errors in your app: argument, arithmetic, not found, etc. They are all errors, but they should not belong to a single "Error package". Instead of creating a namespace, you can use a suffix. Your naming would look like this:

- package.ArgumentError
- package.ArithmeticError
- package.NotFoundError
- package.TemporarilyUnavailableError

So they aren’t tied anymore to the unhelpful namespacing and concept "Error", now you’re free to move them to sub or parent applications as the time needs. As long as your project grows, these files that aren’t together conceptually might pollute your OS directories and make things hard to navigate. So it’s okay to organise your OS files and directories in a way that works better. 

## Package naming conventions

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