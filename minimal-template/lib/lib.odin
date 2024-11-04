package lib_main

import "core:fmt"

main :: proc() {
	fmt.println("Hellope! Environment: ", #config(env, "dev"))
}
