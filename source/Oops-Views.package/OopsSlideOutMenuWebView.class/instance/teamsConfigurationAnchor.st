accessing
teamsConfigurationAnchor

	| teamsConfiguration |

	teamsConfiguration := self componentSupplier
		asynchronicLinkLabeled: 'Equipos'
		applying: [ :anchor | anchor addClass materialize wavesEffect ].
		
	teamsConfiguration onTrigger
		evaluate: [ session setContentTo: TeamsWebView new ];
		render: session identifiedContentView.

	^ teamsConfiguration