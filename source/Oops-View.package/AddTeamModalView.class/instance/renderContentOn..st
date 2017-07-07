rendering
renderContentOn: aCanvas
	| addButton |
	addButton := self componentSupplier
		asynchronicButtonLabeled: #Agregar
		applying: (ComponentClassificationCommand toStyleWith: BootstrapCssStyles buttonPrimary).
	addButton onTrigger serializeForm: addTeamForm.
	aCanvas
		render:
			(BootstrapModalWebView
				withHeader: (BootstrapModalHeaderWebView dismissableTitled: 'Agregar equipo')
				content: addTeamForm
				footer:
					(BootstrapModalFooterWebView
						with: addButton
						andCloseButtonLabeled: 'Cerrar'
						applyingToIt: (ComponentClassificationCommand toStyleWith: BootstrapCssStyles buttonLink))
				applyingToDialog: BootstrapSelfCleaningModalCommand new
				andModalDocument: (ComponentClassificationCommand toStyleWith: BootstrapCssStyles modalLarge))