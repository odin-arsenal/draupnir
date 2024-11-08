# Structuring Odin Projects

_Odin_ is a programming language where the code is mainly organized as procedures and packages (a directory of files). However, _Odin_ documentation doesn’t give a lot of advice on how to organize a project, as expected from a general-purpose language. A good project organization enable our systems to be versatile enough to cover all existing and future features, while remaining consistent. It should also allow scaling small subfeatures into larger ones. A good project structure is that it guides us to design our programs in a way to most benefit from the architecture that they run on.

The rule of thumb when structuring applications, is to allow the top-level directories to directly communicate with layer below, but any communication crossing more than one line is frown upon. As an example, `project.odin` can retrieve packages in `lib/tasks`. Reaching out from `lib/tasks` to `project.odin` is - however - not good.

Try to keep the directory structure as flat as it is possible and manageable. You don’t really need to type more than necessary when opening/saving files - as long as there is sane number of files in a directory. There is no need to multiply subdirectories for the sake of multiplying subdirectories.

The whole idea is to have packages that work as an entry point for your app’s business. Then, all sub-entities for that aspect live there, on inner files and directories. It’s like your lib has sub-libraries. Then your sub-library has a main interface that lives on an entry point package. The main reasoning is thinking about the deletion and moving. If you want to move a package to another directory, all its files should move together. See the entry point purpose working like an index file in a web server directory, and usually, the index files live in the directory as children, not as siblings.

```text
lib/social_network
    └── authentication
            ├── authentication.odin
            ├── google.odin
            ├── facebook.odin
            └── password.odin
```

## Avoid namespacing, use Sufixes

Some kinds of files fit in one or more categories and do not belong exclusively to a common package. For example, errors, your app might have several packages that represent errors. Let’s say you have multiple errors in your app: argument, arithmetic, not found, etc. They are all errors, but they should not belong to a single "Error package". Instead of creating a namespace, you can use a suffix. Your naming would look like this:

- package.ArgumentError
- package.ArithmeticError
- package.NotFoundError
- package.TemporarilyUnavailableError

So they aren’t tied anymore to the unhelpful namespacing and concept "Error", now you’re free to move them to sub or parent applications as the time needs. As long as your project grows, these files that aren’t together conceptually might pollute your OS directories and make things hard to navigate. So it’s okay to organise your OS files and directories in a way that works better. 

## Building a Functional Core in Odin

The book [Designing Elixir Systems with OTP](https://pragprog.com/titles/jgotp/designing-elixir-systems-with-otp/) shows the concept of "Do Fun Things with Big, Loud Worker-Bees" (a mnemonic for understanding the layers). A concept tailored to design libraries with intelligent layers that shape the right data structures, flow from one procedures into the next, and present the right APIs. It shows you how to go beyond simple programming to designing, and that means building the right layers. Embrace data structures that work best and use them to build procedures that perform and compose well, layer by layer, across packages. Test your code at the right place using the right techniques. Layer your code into pieces that are easy to understand. The objective when using these techniques is making the codebases a lot simpler.

### Functional Core (Do Fun Things)

This is the "core", "kernel" or "domain". Is the main business logic unit that is composed by **Data**, Functions and **Procedures** and **Tests**. 

#### Data

The idea is to rely on inmutable data structures as much as posible, so applications get much easier to maintain and algorithms get much cleaner, achieving harmony between data structures and procedures.

#### Functions and Procedures

Procedures needs certainty and sanitized data. If you were building an application it would be more of a library. The main concept here is **CRC**, which means: `Constructors`, `Reducers` and `Converters`.

- `Constructors`: Are procedures that creates and sets data structures that will be pased down to `Reducers` and `Converters`. This data structure is known as the `accumulator` or `token`.

- `Reducers`: These procedures take the `accumulator` and "reduce it", applying a pipeline of different operations and procedures until it reaches a state ready for the `Converter`.

- `Converter`: Takes the accumulator and "convert it" to a final format, that is ready for displaying to the user or pass it to another pipeline of _CRC_. Example would be a procedure that takes a `json` data structure and convert it to `string`, this string will be passed down to the pipeline for saving the contents to a file in disk.

Thanks to this form of organization, we can see our code in a coherent and unified way. By having a common data structure with several functions, we can perform operations and express ourselves with greater readability. Our systems will be easier to understand and maintain in the future.

Consistency is an important quality factor in our systems and using CRC is a great tool to achieve that.

**Example**

```odin
{{#include examples/crc1/crc.odin}}
```

**Example 2**

```odin
{{#include examples/crc2/crc.odin}}
```

#### Tests

## References

- https://goulven-clech.dev/2024/elixir-folder-structure
- https://www.amberbit.com/blog/2017/11/21/structuring-elixir-projects/
- https://redrapids.medium.com/learning-elixir-its-all-reduce-204d05f52ee7
- https://ulisses.dev/elixir/2022/03/04/elixir-modules-files-directories-and-naming-conventions.html
- https://en.wikipedia.org/wiki/Domain-driven_design
- https://kevinhoffman.medium.com/building-a-functional-core-in-elixir-6201ddcb4300
- https://elixirmerge.com/p/structured-program-design-in-elixir-with-bruce-tate
- https://pragprog.com/titles/jgotp/designing-elixir-systems-with-otp/
