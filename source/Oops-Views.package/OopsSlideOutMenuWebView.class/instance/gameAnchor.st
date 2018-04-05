accessing
gameAnchor

	| robotConfiguration |

	robotConfiguration := self componentSupplier
		asynchronicLinkLabeled: 'Juego'
		applying: [ :anchor | anchor addClass materialize wavesEffect ].

	robotConfiguration onTrigger
		evaluate: [ session setContentTo: GameConfigurationWebView new ];
		render: session identifiedContentView.

	^ robotConfiguration