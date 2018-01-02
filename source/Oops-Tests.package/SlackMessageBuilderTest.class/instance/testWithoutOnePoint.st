tests
testWithoutOnePoint

	| builder |

	builder := SlackMessageBuilder
		from:
			(RoundScore
				of: 1
				withAll:
					{(PlayerScore of: self maximiliano with: 3).
					(PlayerScore of: self francisco with: 2).
					(PlayerScore of: self gabriel with: 2)}).
	self
		assert: builder built
		equals:
			'{
	"attachments" : [
		{
			"fields" : [
				{
					"title" : "3 puntos para",
					"value" : "Maximiliano Tabacman (@m.tabacman)",
					"short" : false
				},
				{
					"title" : "2 puntos para",
					"value" : "Francisco Ortiz Peñaloza (@f.ortiz) y Gabriel Cotelli (@g.cotelli)",
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