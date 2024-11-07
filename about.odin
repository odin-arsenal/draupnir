// A placeholder file to please Odin
package Draupnir

/*
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
*/


main :: proc() {}