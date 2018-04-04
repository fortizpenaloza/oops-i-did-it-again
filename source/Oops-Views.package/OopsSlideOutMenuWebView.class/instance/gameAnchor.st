accessing
gameAnchor

	| robotConfiguration |

	robotConfiguration := self componentSupplier
		asynchronicLinkActingAsButtonLabeled: 'Juego'
		applying: [ :anchor | anchor addClass materialize wavesEffect ].

	robotConfiguration onTrigger
		evaluate: [ session setContentTo: GameConfigurationWebView new ];
		render: session identifiedContentView.

	^ robotConfiguration