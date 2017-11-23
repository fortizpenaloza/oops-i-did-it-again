Accessing
contentView

	^ [ :canvas | 
	canvas
		render: OppsApplicationHeaderWebView new;
		render: OppsApplicationMainWebView new ]