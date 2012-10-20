

all: package

package: _clean_package _package
	@touch package

clean: _clean_package

_package:
	@echo "Build language packages..."
	@mkdir -p build
	@cp -r src/fi_FI build/
	@cd build ; zip -r osclass-fi_FI.zip fi_FI/*
	@echo "Done."

_clean_package:
	@echo "Cleaning up..."
	@if [ -f package ] ; then rm package ; fi
	@if [ -d build ] ; then rm -r build ; fi

