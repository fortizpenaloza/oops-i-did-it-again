rendering
renderContentOn: aCanvas

	aCanvas
		render:
			(GenericContainerWebView
				wrapping: self gridView
				applying: [ :container | container addClass materialize container ])