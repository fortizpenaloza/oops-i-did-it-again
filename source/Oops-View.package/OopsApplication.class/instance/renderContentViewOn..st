rendering
renderContentViewOn: aCanvas
	
	contentView := IdentifiedWebView
		forDivNamed: 'content'
		containing: TeamsTableView new
		applying: (ComponentClassificationCommand toStyleWith: BootstrapCssStyles row).
		
	aCanvas render: contentView