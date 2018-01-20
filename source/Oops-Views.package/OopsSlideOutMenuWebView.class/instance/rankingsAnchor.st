accessing
rankingsAnchor

	| rankingsAnchor |

	rankingsAnchor := self componentSupplier
		asynchronicAnchorLabeled: [ :canvas | canvas render: 'Ranking' ]
		applying: [ :anchor | anchor addClass materialize wavesEffect ].

	rankingsAnchor onTrigger
		evaluate: [ session setContentTo: (PlayersRankingsWebView
				entitled: 'Ranking'
				obtainingRankingBySending: #currentGame) ];
		render: session identifiedContentView.
		
	^ rankingsAnchor