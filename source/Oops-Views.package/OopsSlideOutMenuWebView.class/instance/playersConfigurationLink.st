accessing links
playersConfigurationLink

	| link |

	link := self componentSupplier
		asynchronicLinkLabeled: 'Jugadores'
		applying: [ :theLink | theLink addClass materialize wavesEffect ].
		
	link onTrigger
		evaluate: [ session setContentTo: PlayersWebView new ];
		render: session identifiedContentView.

	^ link