accessing
acceptButtonView

	^ self componentSupplier
		asynchronicAnchorLabeled: 'Aceptar'
		applying: [ :anchor | 
			anchor addClass materialize button
				+ anchor addClass materialize wavesEffect
				+ anchor addClass materialize wavesLight
				+ anchor addClass materialize modalAction
				+ anchor addClass materialize modalClose ]