/// docs.ignore
// Identifies the directory as an Odin project
// Setup settings for project wide context
package Project

import "core:fmt"
import "core:os"

import app "lib"

main :: proc() {
	app.start(os.args)
}
