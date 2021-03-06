# Convenience makefile

all: build-preview build-hplugin

build-preview:
	mkdir -p build-preview && cd build-preview && qmake ../preview.pro && make

build-hplugin:
	mkdir -p build-hplugin && cd build-hplugin && qmake ../hplugin.pro && make

preview: | build-preview
	build-preview/preview/preview

doc: 
	doxygen Doxyfile

clean:
	rm -rf build-preview build-hplugin

.PHONY: all build-preview build-hplugin preview clean
