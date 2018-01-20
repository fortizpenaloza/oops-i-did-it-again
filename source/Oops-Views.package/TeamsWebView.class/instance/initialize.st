initialization
initialize

	identifiedTableWithAddButtonView := IdentifiedWebView
		forDivNamed: 'teams'
		containing: [ :canvas | 
			canvas
				render: self addTeamButtonView;
				render: self tableView ]