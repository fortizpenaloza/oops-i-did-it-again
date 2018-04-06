private-rendering
previousGameRankingsLink

	| rankingsAnchor |

	rankingsAnchor := self componentSupplier
		asynchronicLinkLabeled: [ :canvas | canvas render: 'Ranking anterior' ]
		applying: [ :anchor | anchor addClass materialize wavesEffect ].

	rankingsAnchor onTrigger
		evaluate: [ session setContentTo: self previousGamePlayersRankingsView ];
		render: session identifiedContentView.

	^ rankingsAnchor