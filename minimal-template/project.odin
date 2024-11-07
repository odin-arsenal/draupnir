// Identifies the directory as an Odin project
// May have have a quick example on the use of the code inside lib/ directory
// My execute scaffolding commands or other tasks
package Project

import "core:fmt"
import "core:os"

import app "lib"

main :: proc() {
	app.start(os.args)
}
