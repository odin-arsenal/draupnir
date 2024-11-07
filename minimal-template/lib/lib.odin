package Lib

import "core:fmt"

main :: proc() {
	fmt.println("Hellope! Environment: ", #config(env, "dev"))
}
