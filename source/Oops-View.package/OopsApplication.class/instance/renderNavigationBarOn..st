Accessing
renderNavigationBarOn: aCanvas
	aCanvas
		render:
			(BootstrapNavigationBar
				fluidBrandedWith:
					(PhrasingContainerWebView
						wrapping: 'Oops!'
						applying:
							(ComponentClassificationCommand
								toStyleWith: BootstrapCssStyles navbarBrand))
				containing: ''
				applying:
					(ComponentClassificationCommand
						toStyleWithAll:
							{BootstrapCssStyles navbarDefault.
							BootstrapCssStyles navbarFixedTop}))