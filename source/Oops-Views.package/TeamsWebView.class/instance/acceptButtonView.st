accessing
acceptButtonView

	^ self componentSupplier
		asynchronicLinkActingAsButtonLabeled: 'Aceptar'
		applying: [ :anchor | 
			anchor addClass materialize wavesEffect
				+ anchor addClass materialize wavesLight
				+ anchor addClass materialize modalAction
				+ anchor addClass materialize modalClose ]