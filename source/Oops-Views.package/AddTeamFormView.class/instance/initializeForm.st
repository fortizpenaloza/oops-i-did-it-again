initialize-release
initializeForm

	form := IdentifiedWebView
		forFormNamed: 'add-team'
		containing: [ :canvas | 
			canvas
				render:
					(GenericContainerWebView
						wrapping:
							(GenericContainerWebView
								wrapping: self labeledNameField
								applying: [ :container | 
									container addClass materialize column
										+ (container addClass materialize columnSmall: 12)
										+ container addClass materialize inputField ])
						applying: [ :container | container addClass materialize row ]);
				render:
					(GenericContainerWebView
						wrapping:
							(GenericContainerWebView
								wrapping: membersField
								applying: [ :container | 
									container addClass materialize column
										+ (container addClass materialize columnSmall: 12) ])
						applying: [ :container | container addClass materialize row ]) ]