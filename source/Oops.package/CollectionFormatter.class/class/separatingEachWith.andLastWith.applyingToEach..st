instance creation
separatingEachWith: aSeparator andLastWith: aLastSeparator applyingToEach: anElementFormatter

	^ self
		separatingEachWith: aSeparator
		andOptionallyLastWith: (Optional containing: aLastSeparator)
		applyingToEach: anElementFormatter