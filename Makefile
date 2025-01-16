TARGET				=./build

all:
	mkdir -p build
	cmake -S . -B $(TARGET)
	make -C $(TARGET) -j4
