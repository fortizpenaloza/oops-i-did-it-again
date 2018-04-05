accessing
previousGameRankingsAnchor

	| rankingsAnchor |

	rankingsAnchor := self componentSupplier
		asynchronicLinkLabeled: [ :canvas | canvas render: 'Ranking anterior' ]
		applying: [ :anchor | anchor addClass materialize wavesEffect ].

	rankingsAnchor onTrigger
		evaluate: [ session
				setContentTo:
					(PlayersRankingsWebView
						titled: 'Ranking anterior'
						obtainingGameFrom: self session oops previousGame) ];
		render: session identifiedContentView.

	^ rankingsAnchor