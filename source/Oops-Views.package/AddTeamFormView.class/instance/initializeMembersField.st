initialize-release
initializeMembersField

	membersField := GenericContainerWebView
		wrapping: (self componentSupplier singleLineTextFieldApplying: [  ])
		applying: [ :container | container addClass materialize chips + self autoCompleteWithPlayerNamesScriptCommand ]