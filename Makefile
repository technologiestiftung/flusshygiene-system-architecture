.DEFAULT_GOAL := build
build:
	dot -Tsvg architecture.dot -o architecture.dot.svg