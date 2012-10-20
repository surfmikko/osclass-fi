

all: package

package: _clean_package _package
	@touch package

clean: _clean_package

_package:
	@echo "Build language packages..."
	@mkdir -p build
	@ls -d 3.*.* | while read f ; do \
		FILE="build/osclass-fi_FI-$$f.zip" ; \
		echo "Building package $$FILE ..." ; \
		pushd . > /dev/null ; \
		cd "$$f" ; \
		zip -r "../$$FILE" "fi_FI" ; \
		popd >/dev/null ; \
		echo "Done." \
	; done

_clean_package:
	@echo "Cleaning up..."
	@rm package
	@if [ -d build ] ; then \
		echo rm -r "build" ; \
		rm -r "build" \
	; fi

