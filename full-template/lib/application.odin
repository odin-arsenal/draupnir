package Project_Application

import "tasks"

// This procedure is called when an application is started using application.start/1 in project.odin
// This procedure should start the top-level process of the application
// Returns a status int that can be used to indicate if the program exited successfully (0 = EX_OK)
start :: proc(args: []string) -> int {
	tasks.run(args)
	return 0
}
