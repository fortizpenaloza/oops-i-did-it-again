accessing links
previousGameRankingsLink

	| link |

	link := self componentSupplier
		asynchronicLinkLabeled: 'Anterior' 
		applying: [ :theLink | theLink addClass materialize wavesEffect ].

	link onTrigger
		evaluate: [ session setContentTo: self previousGamePlayersRankingsView ];
		render: session identifiedContentView.

	^ link