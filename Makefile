


package: _clean_package _package

clean: _clean_package


_package:
	@mkdir -p build
	@ls -d 3.*.* | while read f ; do \
		pushd . ; \
		cd "$$f" ; \
		zip -r "../build/osclass-fi_FI-$$f.zip" "fi_FI" ; \
		popd \
	; done

_clean_package:
	rm -R ${CURDIR}/build/
