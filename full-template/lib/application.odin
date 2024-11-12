package Project_Application

import "tasks"

// This procedure is called when an application is started using application.start/1
// in project.odin
// This procedure should start the top-level process of the application
start :: proc(args: []string) {
	tasks.run(args)
}
