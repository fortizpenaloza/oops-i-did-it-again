accessing links
gameConfigurationLink

	| link |

	link := self componentSupplier
		asynchronicLinkLabeled: 'Juego'
		applying: [ :theLink | theLink addClass materialize wavesEffect ].

	link onTrigger
		evaluate: [ session setContentTo: GameConfigurationWebView new ];
		render: session identifiedContentView.

	^ link