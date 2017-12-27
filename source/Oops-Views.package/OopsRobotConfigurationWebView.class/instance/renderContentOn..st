rendering
renderContentOn: aCanvas

	| addButton |

	addButton := self componentSupplier
		asynchronicAnchorLabeled: 'Forzar una ronda'
		applying: [ :anchor | 
			anchor addClass materialize wavesEffect + anchor addClass materialize wavesLight
				+ anchor addClass materialize button ].
			
	addButton onTrigger evaluate: [ self session oops playRound ].

	aCanvas
		render:
			(GenericContainerWebView
				wrapping: self headerView
				applying: [ :container | container addClass materialize container ]).

	aCanvas
		render:
			(GenericContainerWebView
				wrapping: [ :canvas | canvas render: addButton ]
				applying: [ :container | container addClass materialize container ])