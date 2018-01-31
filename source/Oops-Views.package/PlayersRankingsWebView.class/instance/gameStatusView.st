rendering
gameStatusView

	^ PhrasingContainerWebView
		wrapping:
			('Después de <1p> rondas jugadas sobre un total de <2p> rondas.'
				expandMacrosWith: self game round
				with: self game totalRounds)
		applying: [ :container |  ]