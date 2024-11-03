.PHONY: build.project build.lib release version hooks

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

release r:
	@rm -rf dist
	@mkdir -p dist
	@make build.lib
	@cp _build/lib dist/


hooks h:
	@make -f .hooks/Makefile

version v:
	@./run --version
