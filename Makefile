PROJECT_ROOT_DIR	=$(shell pwd)
TARGET				=./build

all:
	mkdir -p build
	cmake -S . -B $(TARGET)
	make -C $(TARGET)
