Controlling
startUpApplicationContextFor: aWillowApplication

	super startUpApplicationContextFor: aWillowApplication.

	contentView := self currentGamePlayersRankingsView.

	identifiedContentView := IdentifiedWebView
		forMainNamed: 'content'
		containing: [ :canvas | canvas render: contentView ]