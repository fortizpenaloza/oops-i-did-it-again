Accessing
contentView

	^ [ :canvas | 
	canvas
		render: OppsHeaderWebView new;
		render: OppsMainWebView new ]