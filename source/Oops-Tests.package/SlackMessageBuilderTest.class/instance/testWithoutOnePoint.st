tests
testWithoutOnePoint

	| builder |

	builder := SlackMessageBuilder
		from:
			(RoundScore
				of: 1
				withAll:
					{(PlayerScore of: self maximiliano is: 3).
					(PlayerScore of: self francisco is: 2).
					(PlayerScore of: self nicolas is: 2).
					(PlayerScore of: self gabriel is: 1)})
		and:
			{(CurrentMonthWorkload
				for: self maximiliano
				with: (TimeUnits second with: 86400)
				of: (TimeUnits second nullMeasure)).
			(CurrentMonthWorkload
				for: self francisco
				with: (TimeUnits second with: 57600)
				of: (TimeUnits second nullMeasure )).
			(CurrentMonthWorkload
				for: self nicolas
				with: (TimeUnits second with: 57600)
				of: (TimeUnits second nullMeasure )).				
			(CurrentMonthWorkload
				for: self gabriel
				with: (TimeUnits second with: 56000)
				of: (TimeUnits second nullMeasure))}.

	self
		assert: builder build
		equals:
			'{
	"attachments" : [
		{
			"fields" : [
				{
					"title" : "3 puntos por tener 16 horas sin registrar para",
					"value" : "Maximiliano Tabacman (<@m.tabacman>)",
					"short" : false
				},
				{
					"title" : "2 puntos por tener 8 horas sin registrar para",
					"value" : "Francisco Ortiz Peñaloza (<@f.ortiz>) y Nicolás Chillo (<@n.chillo>)",
					"short" : false
				},
				{
					"title" : "1 puntos por tener 7 horas y 33 minutos sin registrar para",
					"value" : "Gabriel Cotelli (<@g.cotelli>)",
					"short" : false
				}
			],
			"color" : "danger",
			"image_url" : "https://78.media.tumblr.com/f3dbf790767e1cb6e594ce2ab91a2d7f/tumblr_mheqkagOpf1qihp55o1_250.gif",
			"fallback" : "Nuevo sorteo sorpresa",
			"text" : "Se realizó un nuevo sorteo sorpresa y estos son los ¿ganadores?"
		}
	]
}'