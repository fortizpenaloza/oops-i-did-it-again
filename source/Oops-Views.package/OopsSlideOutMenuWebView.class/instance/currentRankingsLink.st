accessing links
currentRankingsLink

	| link |

	link := self componentSupplier
		asynchronicLinkLabeled: [ :canvas | canvas render: 'Actual' ]
		applying: [ :link | link addClass materialize wavesEffect ].

	link onTrigger
		evaluate: [ session setContentTo: self currentGamePlayersRankingsView ];
		render: session identifiedContentView.

	^ link