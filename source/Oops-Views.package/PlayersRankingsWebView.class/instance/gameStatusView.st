rendering
gameStatusView

	^ PhrasingContainerWebView
		wrapping:
			('Después de <1p> rondas jugadas sobre un total de <2p> rondas.'
				expandMacrosWith: self currentGame round
				with: self currentGame totalRounds)
		applying: [ :container |  ]