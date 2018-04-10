accessing links
teamsConfigurationLink

	| link |

	link := self componentSupplier
		asynchronicLinkLabeled: 'Equipos'
		applying: [ :theLink | theLink addClass materialize wavesEffect ].
		
	link onTrigger
		evaluate: [ session setContentTo: TeamsWebView new ];
		render: session identifiedContentView.

	^ link