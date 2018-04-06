private-rendering
currentRankingsLink

	| currentRankingsLink |

	currentRankingsLink := self componentSupplier
		asynchronicLinkLabeled: [ :canvas | canvas render: 'Ranking' ]
		applying: [ :anchor | anchor addClass materialize wavesEffect ].

	currentRankingsLink onTrigger
		evaluate:
				[ session setContentTo: self currentGamePlayersRankingsView ];
		render: session identifiedContentView.

	^ currentRankingsLink