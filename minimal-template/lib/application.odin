package Lib

import "core:fmt"

// This function is called when an application is started using application.start/1
// in project.odin
// This function should start the top-level process of the application
start :: proc(args: []string) -> int {
	fmt.println("Hellope! Environment: ", #config(env, "dev"))
	return 0
}
