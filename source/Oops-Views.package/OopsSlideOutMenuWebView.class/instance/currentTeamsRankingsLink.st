accessing links
currentTeamsRankingsLink

	| link |

	link := self componentSupplier
		asynchronicLinkLabeled: [ :canvas | canvas render: 'Actual' ]
		applying: [ :theLink | theLink addClass materialize wavesEffect ].

	link onTrigger
		evaluate:
				[ session setContentTo: self currentGameTeamsRankingsView ];
		render: session identifiedContentView.

	^ link