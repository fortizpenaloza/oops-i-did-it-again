instance creation
separatingEachWith: aSeparator andLastWith: aLastSeparator

	^ self
		separatingEachWith: aSeparator
		andOptionallyLastWith: (Optional containing: aLastSeparator)
		applyingToEach: [ :element | element asString ]