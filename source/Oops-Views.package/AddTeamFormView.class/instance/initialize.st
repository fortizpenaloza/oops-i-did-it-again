initialize-release
initialize

	nameField := self componentSupplier singleLineTextFieldApplying: [  ].
	self
		initializeMembersField;
		initializeForm