// A placeholder file to please Odin
package Draupnir

import "core:fmt"

main :: proc() {
    fmt.println("===========================")
    fmt.println("Draupnir Project Templates")
    fmt.println("===========================")
    fmt.println(`Draupnir is a magical ring that symbolizes prosperity and abundance adding to Odin’s wealth and power. In the same spirit, this project adds to Odin's wealth and power by scaffolding Odin projects.
    
    Github: https://github.com/odin-arsenal/draupnir/`)

    fmt.println("----------------")
    fmt.println("How to Use?")
    fmt.println("----------------")
    fmt.println(`Download draupnir templates with a quick curl command. Ensure to download the tar.gz version to preserve file permissions.

    $ curl -L https://github.com/odin-arsenal/draupnir/archive/refs/heads/main.tar.gz -o templates.tar.gz
    `)

    fmt.println("Untar the file and rename the template directory of your liking. You can remove the other files and directories.")
    fmt.println(`
    $ tar –xvzf templates.tar.gz
    $ mv draupnir-main/minimal-template my-project
    $ rm -rf draupnir-main
    $ rm -rf templates.tar.gz
    $ cd my-project`)
}