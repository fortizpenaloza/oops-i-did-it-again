accessing links
currentRankingsLink

	| link |

	link := self componentSupplier
		asynchronicLinkLabeled: 'Actual'
		applying: [ :theLink | theLink addClass materialize wavesEffect ].

	link onTrigger
		evaluate: [ session setContentTo: self currentGamePlayersRankingsView ];
		render: session identifiedContentView.

	^ link