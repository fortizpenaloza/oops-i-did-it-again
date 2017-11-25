rendering
initialize

	nameField := self componentSupplier singleLineTextFieldApplying: [ :textField |  ].
	jiraUsernameField := self componentSupplier singleLineTextFieldApplying: [ :textField |  ].
	slackUsernameField := self componentSupplier
		singleLineTextFieldApplying: [ :textField |  ]