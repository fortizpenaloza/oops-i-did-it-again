Controlling
startUpApplicationContextFor: aWillowApplication

	super startUpApplicationContextFor: aWillowApplication.

	contentView := [ :canvas |  canvas render: 'Juli' ].

	identifiedContentView := IdentifiedWebView forDivNamed: 'main' containing: [:canvas | canvas render:  contentView ]