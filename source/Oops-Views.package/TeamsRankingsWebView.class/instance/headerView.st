rendering
headerView

	^ HeadingWebView
		displaying: 'Rankings por equipo'
		withLevel: 1
		applying:
			[ :heading | heading addClass materialize redText + (heading addClass materialize textLightenBy: 2) ]