rendering
slideOutMenu

	| rankingAnchor robotConfiguration |

	rankingAnchor := self componentSupplier
		asynchronicAnchorLabeled: [ :canvas | canvas render: 'Ranking' ]
		applying: [ :anchor | anchor addClass materialize wavesEffect ].

	rankingAnchor onTrigger
		evaluate: [ self session setContentTo: OopsRankingWebView new ];
		render: self session identifiedContentView.
		
	robotConfiguration := self componentSupplier
		asynchronicAnchorLabeled: 'Robot'
		applying: [ :anchor | anchor addClass materialize wavesEffect ].
		
	robotConfiguration onTrigger
		evaluate: [ self session setContentTo: OopsRobotConfigurationWebView new ];
		render: self session identifiedContentView.
			

	^ self componentSupplier slideOutMenuBuilder
		beFixed;
		addSubheaderLabeled: 'Oops i did it again!';
		addElement: rankingAnchor;
		addElement:
			(self componentSupplier
				asynchronicAnchorLabeled: 'Second Link'
				applying: [ :anchor | anchor addClass materialize wavesEffect ]);
		addDivider;
		addSubheaderLabeled: 'Configuración';
		addElement: robotConfiguration;
		build