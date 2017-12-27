initialize-release
initialize

	nameField := self componentSupplier
		singleLineTextFieldApplying: [ :textField |  ].
	jiraUserField := self componentSupplier
		singleLineTextFieldApplying: [ :textField |  ].
	slackUserField := self componentSupplier
		singleLineTextFieldApplying: [ :textField |  ].

	self initializeForm