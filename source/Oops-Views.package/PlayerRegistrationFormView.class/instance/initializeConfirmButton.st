initialize-release
initializeConfirmButton

	confirmButton := self componentSupplier
		asynchronicAnchorLabeled: 'Agregar'
		applying: [ :anchor | 
			anchor addClass materialize button + anchor addClass materialize wavesEffect
				+ anchor addClass materialize wavesLight
				+ anchor addClass materialize modalAction
				+ anchor addClass materialize modalClose ].

	confirmButton onTrigger
		serializeForm: form;
		evaluate: [ self session oops
				registerPlayerNamed: nameField contents
				signingIntoJiraWith: jiraUserField contents
				andSlackWith: slackUserField contents ]