accessing
addTeamButtonView

	| addPlayerButtonView |

	addPlayerButtonView := self componentSupplier
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

	addPlayerButtonView onTrigger open: self addTeamModalView.

	^ addPlayerButtonView