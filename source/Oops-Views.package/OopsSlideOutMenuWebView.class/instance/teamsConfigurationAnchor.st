as yet unclassified
teamsConfigurationAnchor

	| teamsConfiguration |

	teamsConfiguration := self componentSupplier
		asynchronicAnchorLabeled: 'Equipos'
		applying: [ :anchor | anchor addClass materialize wavesEffect ].
		
	teamsConfiguration onTrigger
		evaluate: [ session setContentTo: PlayersWebView new ];
		render: session identifiedContentView.

	^ teamsConfiguration