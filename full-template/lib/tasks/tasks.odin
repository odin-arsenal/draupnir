package Project_Tasks

import "core:flags"

// Tasks
import "options"
import "version"

parse_system_args :: proc(args: []string) -> options.Options {
	opts: options.Options
	// .Odin is the default bahaviour
	// however we put it explicit here
	// to tell that its supports maps as params
	// so is better than .Unix param standard.
	flags.parse_or_exit(&opts, args, .Odin)
	return opts
}

run_task_by_options :: proc (args: options.Options) {
	if args.ver {
		version.run(args)
		return
	}
}

// Main entry point for Tasks package.
run :: proc(args: []string) {
	opts := parse_system_args(args)
	run_task_by_options(opts)
}
