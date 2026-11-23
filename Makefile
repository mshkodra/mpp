# m++ build. Every target below is a placeholder until its session happens.
# Decisions: plain Make, host cc for the compiler, Docker container for QEMU.

CC      ?= cc
CFLAGS  ?= -std=c11 -Wall -Wextra -Werror -g
BUILD   := build

.PHONY: all mpp runtime test lint docker-build clean

all: mpp

mpp:            ## build the compiler into $(BUILD)/mpp
	@echo "TODO: compile compiler/*.c into $(BUILD)/mpp"

runtime:        ## cross-assemble runtime/ into $(BUILD)/runtime.o (inside container)
	@echo "TODO: riscv64-linux-gnu-as runtime/*.s"

test:           ## run tools/runtest.py inside the dev container
	@echo "TODO: docker run ... python3 tools/runtest.py"

lint:           ## compile compiler/ with warnings as errors, no output
	@echo "TODO: $(CC) $(CFLAGS) -fsyntax-only compiler/*.c"

docker-build:   ## build the Linux dev container from tools/Dockerfile
	@echo "TODO: docker build -t mpp-dev tools/"

clean:
	rm -rf $(BUILD)
