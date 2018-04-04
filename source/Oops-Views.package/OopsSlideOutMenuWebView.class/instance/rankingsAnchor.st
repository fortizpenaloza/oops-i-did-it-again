accessing
rankingsAnchor

	| rankingsAnchor |

	rankingsAnchor := self componentSupplier
		asynchronicLinkActingAsButtonLabeled: [ :canvas | canvas render: 'Ranking' ]
		applying: [ :anchor | anchor addClass materialize wavesEffect ].

	rankingsAnchor onTrigger
		evaluate: [ session setContentTo: (PlayersRankingsWebView
				titled: 'Ranking'
				obtainingGameFrom: [ self session oops currentGame ]) ];
		render: session identifiedContentView.
		
	^ rankingsAnchor