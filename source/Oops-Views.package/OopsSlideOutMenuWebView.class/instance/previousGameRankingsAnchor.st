as yet unclassified
previousGameRankingsAnchor

	| rankingsAnchor |

	rankingsAnchor := self componentSupplier
		asynchronicAnchorLabeled: [ :canvas | canvas render: 'Ranking anterior' ]
		applying: [ :anchor | anchor addClass materialize wavesEffect ].

	rankingsAnchor onTrigger
		evaluate: [ session setContentTo: (PlayersRankingsWebView
				entitled: 'Ranking anterior'
				obtainingRankingBySending: #previousGame) ];
		render: session identifiedContentView.
		
	^ rankingsAnchor