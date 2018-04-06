private-rendering
playersRankingsNotAvailableView

	^ GenericContainerWebView
		wrapping: [ :canvas | 
			canvas
				render:
					(HeadingWebView
						displaying: 'Ranking anterior'
						withLevel: 1
						applying: [ :heading | 
							heading addClass materialize redText
								+ (heading addClass materialize textLightenBy: 2) ]);
				render:
					(PhrasingContainerWebView
						wrapping: 'Aún no se ha terminado un juego'
						applying: [  ]) ]
		applying: [ :container | container addClass materialize container ]