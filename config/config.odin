package config

// This file is responsible for configuring your application
// and its dependencies.

// Can be subdivided in other files
//
// config.odin ->
// 	general application configuration
//
// dev.odin ->
// 	development environment configuration
//
// prod.odin ->
//	production environment configuration
//
// runtime.odin ->
//	is executed for all environments, including during releases.
//  It is executed after compilation and before the
//  system starts, so it is typically used to load production configuration
//  and secrets from environment variables or elsewhere.
//
//  test.odin ->
// 		test environment configuration
