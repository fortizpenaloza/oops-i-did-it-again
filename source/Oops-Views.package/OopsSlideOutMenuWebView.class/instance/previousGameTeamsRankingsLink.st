accessing links
previousGameTeamsRankingsLink

	| link |

	link := self componentSupplier
		asynchronicLinkLabeled: 'Anterior' 
		applying: [ :theLink | theLink addClass materialize wavesEffect ].

	link onTrigger
		evaluate:
				[ session setContentTo: self previousGameTeamsRankingsView ];
		render: session identifiedContentView.

	^ link