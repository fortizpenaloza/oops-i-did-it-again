Controlling
startUpApplicationContextFor: aWillowApplication

	super startUpApplicationContextFor: aWillowApplication.

	contentView := [ :canvas |  canvas render: 'Music is my beach house' ].
	identifiedContentView := IdentifiedWebView forDivNamed: 'main' containing: [:canvas | canvas render:  contentView ].
