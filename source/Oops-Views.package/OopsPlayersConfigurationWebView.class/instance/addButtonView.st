accessing
addButtonView

	| addButton |

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
				+ anchor addClass materialize red
				+ anchor addClass materialize right ].

	addButton onTrigger
		open:
			(self componentSupplier dialogBuilder
				wrapping: AddPlayerWebView new;
				build).

	^ addButton