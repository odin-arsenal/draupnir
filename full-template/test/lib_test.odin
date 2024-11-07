package Test

import "core:log"
import "core:testing"
import "core:os"

import app "project:lib"

@(test)
test_that_app_ :: proc(t: ^testing.T) {

		result := 42

    if testing.expect_value(t, result, 42) {
        return
    }

		// Cleans up the test procedure. This is useful
		// when some tests fails and can clodge the testing process.
		// This is a way to ensure the testing process goes smoothly.
    testing.cleanup(t, proc (raw_handle: rawptr) {
        handle := cast(^os.Handle) raw_handle
        os.close(handle^)
    }, &result)
}
