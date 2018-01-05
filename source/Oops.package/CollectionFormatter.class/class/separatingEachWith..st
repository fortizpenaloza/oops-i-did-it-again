instance creation
separatingEachWith: aSeparator

	^ self
		separatingEachWith: aSeparator
		andOptionallyLastWith: Optional unused
		applyingToEach: [ :element | element asString ]