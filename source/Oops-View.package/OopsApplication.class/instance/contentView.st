accessing
contentView
	^ GenericContainerWebView
		wrapping: [ :canvas | 
			self renderNavigationBarOn: canvas.
			self renderContentViewOn: canvas ]
		applying: (ComponentClassificationCommand toStyleWith: BootstrapCssStyles containerFluid)