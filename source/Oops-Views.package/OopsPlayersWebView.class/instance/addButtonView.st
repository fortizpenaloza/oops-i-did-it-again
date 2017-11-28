accessing
addButtonView

	| addButton addPlayerFormView |

	addButton := self componentSupplier
		asynchronicAnchorLabeled: [ :canvas | 
			canvas icon
				class: 'material-icons';
				with: 'add' ]
		applying: [ :anchor | 
			anchor addClass materialize wavesEffect
				+ anchor addClass materialize wavesLight
				+ anchor addClass materialize buttonLarge
				+ anchor addClass materialize buttonFloating
				+ anchor addClass materialize right ].
			
	addPlayerFormView := PlayerRegistrationFormView new.

	addButton onTrigger
		open:
			(self componentSupplier dialogBuilder
				wrapping: addPlayerFormView;
				addFooterButton: addPlayerFormView confirmButton;
				build).

	^ addButton