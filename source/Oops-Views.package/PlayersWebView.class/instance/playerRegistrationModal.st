accessing
playerRegistrationModal

	| addButton playerRegistrationForm |

	playerRegistrationForm := PlayerRegistrationFormView new.

	addButton := self componentSupplier
		asynchronicAnchorLabeled: 'Agregar'
		applying: [ :anchor | 
			anchor addClass materialize button + anchor addClass materialize wavesEffect
				+ anchor addClass materialize wavesLight + anchor addClass materialize modalAction
				+ anchor addClass materialize modalClose ].

	addButton onTrigger
		serializeForm: playerRegistrationForm;
		evaluate: [ self session oops addPlayer: playerRegistrationForm player ].

	^ self componentSupplier dialogBuilder
		wrapping: playerRegistrationForm;
		addFooterButton: addButton;
		build