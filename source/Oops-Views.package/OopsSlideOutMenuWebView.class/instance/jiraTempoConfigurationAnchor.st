as yet unclassified
jiraTempoConfigurationAnchor

	| playersConfiguration |

	playersConfiguration := self componentSupplier
		asynchronicAnchorLabeled: 'JIRA Tempo'
		applying: [ :anchor | anchor addClass materialize wavesEffect ].
		
	playersConfiguration onTrigger
		evaluate: [ session setContentTo: PlayersWebView new ];
		render: session identifiedContentView.

	^ playersConfiguration