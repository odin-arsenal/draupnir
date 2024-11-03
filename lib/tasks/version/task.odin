package lib_tasks_version

import "core:fmt"

task_run_default_version:: proc() {
	fmt.printfln("%s\n%s\n%s", COPYRIGHT, AUTHORS, WEBSITE)
}
