accessing
playersAnchor

	| playersConfiguration |

	playersConfiguration := self componentSupplier
		asynchronicLinkLabeled: 'Jugadores'
		applying: [ :anchor | anchor addClass materialize wavesEffect ].
		
	playersConfiguration onTrigger
		evaluate: [ session setContentTo: PlayersWebView new ];
		render: session identifiedContentView.

	^ playersConfiguration