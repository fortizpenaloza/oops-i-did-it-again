rendering
headerView

	^ GenericContainerWebView
		wrapping:
			(GenericContainerWebView
				wrapping:
					(HeadingWebView
						displaying: 'Robot'
						withLevel: 1
						applying:
							[ :heading | heading addClass materialize redText + (heading addClass materialize textLightenBy: 2) ])
				applying: [ :container | container addClass materialize column ])
		applying: [ :container | container addClass materialize row ]