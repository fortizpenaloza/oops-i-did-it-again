initialization
initialize

	identifiedTableWithAddButtonView := IdentifiedWebView
		forDivNamed: 'players'
		containing: [ :canvas | 
			canvas
				render: self addPlayerButtonView;
				render: self tableView ]