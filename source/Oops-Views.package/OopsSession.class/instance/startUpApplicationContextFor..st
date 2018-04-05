Controlling
startUpApplicationContextFor: aWillowApplication

	super startUpApplicationContextFor: aWillowApplication.

	contentView := 
			(PlayersRankingsWebView
				titled: 'Ranking'
				obtainingGameFrom: self oops currentGame).
				
	identifiedContentView := IdentifiedWebView
		forMainNamed: 'content'
		containing: [:canvas | canvas render: contentView ]