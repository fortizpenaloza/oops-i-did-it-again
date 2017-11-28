accessing
rankingAnchor

	| rankingAnchor |

	rankingAnchor := self componentSupplier
		asynchronicAnchorLabeled: [ :canvas | canvas render: 'Ranking' ]
		applying: [ :anchor | anchor addClass materialize wavesEffect ].

	rankingAnchor onTrigger
		evaluate: [ session setContentTo: OopsRankingWebView new ];
		render: session identifiedContentView.
		
	^ rankingAnchor