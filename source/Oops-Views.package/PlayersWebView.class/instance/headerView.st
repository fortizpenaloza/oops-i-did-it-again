accessing
headerView

	^ HeadingWebView
		displaying: 'Jugadores'
		withLevel: 1
		applying:
			[ :heading | heading addClass materialize redText + (heading addClass materialize textLightenBy: 2) ]
				