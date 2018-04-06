initialize-release
initialize

	nameField := self componentSupplier singleLineTextFieldApplying: [  ].
	membersField := GenericContainerWebView
		wrapping: (self componentSupplier singleLineTextFieldApplying: [  ])
		applying: [ :container | 
			container addClass materialize chips
				+
					(ComponentScriptCommand
						toExecute: [ :canvas | 
							canvas jQuery this
								call: MaterializeConstants chips
								with:
									(Dictionary new
										at: #autocompleteOptions
											put:
											(Dictionary new
												at: #data put: self playerNames;
												yourself);
										yourself) ]) ].

	self initializeForm