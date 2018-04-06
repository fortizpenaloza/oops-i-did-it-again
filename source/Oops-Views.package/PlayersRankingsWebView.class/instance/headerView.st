private-rendering
headerView

	^ HeadingWebView
		displaying: title 
		withLevel: 1
		applying: [ :heading | 
			heading addClass materialize redText
				+ (heading addClass materialize textLightenBy: 2) ]