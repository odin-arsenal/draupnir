.PHONY: build.project build.lib release version

make build b:
	@rm -rf _build
	@mkdir -p _build
	@make build.project
	@make build.lib

build.project bp:
	@mkdir -p _build
	@odin build project.odin -file -out:_build/project

build.lib bl:
	@mkdir -p _build
	@odin build lib/ -out:_build/lib

version v:
	@./run --version

release r:
	@rm -rf dist
	@mkdir -p dist
	@make build.lib
	@cp _build/lib dist/
