.PHONY: build.project build.lib build.release version hooks lint

make build b:
	@rm -rf _build
	@mkdir -p _build
	@make build.project
	@make build.lib

build.project bp:
	@mkdir -p _build
	@odin build project.odin -collection:config=config/ -collection:deps=deps/ -debug -file -out:_build/project

build.lib bl:
	@mkdir -p _build
	@odin build lib/ -collection:config=config/ -collection:deps=deps/ -debug -out:_build/lib

build.release release r br:
	@rm -rf dist
	@mkdir -p dist
	@odin build lib/ -collection:config=config/ -collection:deps=deps/ -out:dist/lib

hooks h:
	@make -f .hooks/Makefile

lint l:
	@odin strip-semicolon . && odin check .

version v:
	@./run --version
