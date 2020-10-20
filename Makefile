all: build/sdl2-jstest

build/sdl2-jstest: build/Makefile
	make -C build

build/Makefile:
	mkdir -p build
	cd build && cmake -DCMAKE_INSTALL_PREFIX="/usr" ..

install: build/sdl2-jstest
	$(MAKE) -C build install

clean:
	rm -rf build
	rm -f *~ *.bak */*~ */*.bak
