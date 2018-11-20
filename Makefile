.PHONY: retrieveUnpackagedSandbox
retrieveUnpackagedSandbox:
	ant -propertyfile ./build.properties retrieveUnpackaged

.PHONY: deploySandbox
deploySandbox:
	ant -propertyfile ./build.properties deployCode

.PHONY: populateChangeset
populateChangeset:
	ant -propertyfile ./build.properties populateChangeset