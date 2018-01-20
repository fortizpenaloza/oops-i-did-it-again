Controlling
startUpApplicationContextFor: aWillowApplication

	super startUpApplicationContextFor: aWillowApplication.

	contentView := [ :canvas | 
	canvas
		render:
			(PlayersRankingsWebView
				entitled: 'Ranking'
				obtainingRankingBySending: #currentGame) ].
	identifiedContentView := IdentifiedWebView
		forMainNamed: 'content'
		containing: [ :canvas | canvas render: contentView ]