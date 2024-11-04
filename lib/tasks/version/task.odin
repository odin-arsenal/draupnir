package lib_tasks_version

import "core:fmt"
import "project:config"

task_run_default_version:: proc() {
	fmt.printfln("%s\n%s\n%s", config.COPYRIGHT, config.AUTHORS, config.WEBSITE)
}
