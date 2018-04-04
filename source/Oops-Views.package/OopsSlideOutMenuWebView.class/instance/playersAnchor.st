accessing
playersAnchor

	| playersConfiguration |

	playersConfiguration := self componentSupplier
		asynchronicLinkActingAsButtonLabeled: 'Jugadores'
		applying: [ :anchor | anchor addClass materialize wavesEffect ].
		
	playersConfiguration onTrigger
		evaluate: [ session setContentTo: PlayersWebView new ];
		render: session identifiedContentView.

	^ playersConfiguration