accessing links
currentTeamsRankingsLink

	| link |

	link := self componentSupplier
		asynchronicLinkLabeled: 'Actual'
		applying: [ :theLink | theLink addClass materialize wavesEffect ].

	link onTrigger
		evaluate:
				[ session setContentTo: self currentGameTeamsRankingsView ];
		render: session identifiedContentView.

	^ link