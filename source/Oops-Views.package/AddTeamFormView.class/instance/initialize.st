initialize-release
initialize

	nameField := self componentSupplier
		singleLineTextFieldApplying: [ :textField | ].
	membersField := MaterializeChipsFieldWebView new.
	
	self initializeForm