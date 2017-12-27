Controlling
startUpApplicationContextFor: aWillowApplication

	super startUpApplicationContextFor: aWillowApplication.

	contentView := [ :canvas | canvas render: PlayersRankingsWebView new ].
	identifiedContentView := IdentifiedWebView
		forMainNamed: 'content'
		containing: [ :canvas | canvas render: contentView ]