.PHONY: default
default: all

.PHONY: all
all: run

.PHONY: compile
compile:
	vlog -incr hello_world.v

.PHONY: optimize
optimize: compile
	vopt hello_world -o optimized

.PHONY: run
run: optimize
	vsim -batch -do 'run; exit;' optimized
