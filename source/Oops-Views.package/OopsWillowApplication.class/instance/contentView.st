Accessing
contentView

	^ [ :canvas | 
	canvas
		render: OopsSlideOutMenuWebView new;
		render: self session identifiedContentView ]