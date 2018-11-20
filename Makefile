.PHONY: retrieveUnpackagedSandbox
retrieveUnpackagedSandbox:
	ant -propertyfile ./build.properties retrieveUnpackaged

.PHONY: deploySandbox
deploySandbox:
	ant -propertyfile ./build.properties deployCode

.PHONY: restoreRetrievedPackageSandbox
restoreRetrievedPackageSandbox:
	ant -propertyfile ./build.properties restoreRetrievedPackage

.PHONY: populateChangeset
populateChangeset:
	./build-helper -tag-package "$(name)"
	ant -propertyfile ./build.properties populateChangeset