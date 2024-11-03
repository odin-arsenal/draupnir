package lib_tasks

import "core:fmt"
import "core:flags"
import "core:os"

import "version"

Options :: struct {
	version: bool `args:"pos=1,name=version" usage:"Prints the current version of Gungnir"`,
}

parse_system_args :: proc() -> Options {
	opt: Options

	flags.parse_or_exit(&opt, os.args, .Unix)
	return opt
}

run_task_by_options :: proc (opt: Options) {
	if opt.version {
		version.task_run_default_version()
		return
	}
}

process_tasks :: proc() {
	opt := parse_system_args()
	run_task_by_options(opt)
}
