accessing
robotAnchor

	| robotConfiguration |

	robotConfiguration := self componentSupplier
		asynchronicAnchorLabeled: 'Juego'
		applying: [ :anchor | anchor addClass materialize wavesEffect ].

	robotConfiguration onTrigger
		evaluate: [ session setContentTo: RobotConfigurationWebView new ];
		render: session identifiedContentView.

	^ robotConfiguration