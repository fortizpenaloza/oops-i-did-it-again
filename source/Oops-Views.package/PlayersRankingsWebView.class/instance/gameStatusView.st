rendering
gameStatusView

	^ PhrasingContainerWebView
		wrapping:
			([ 'Después de <1p> rondas jugadas sobre un total de <2p> rondas.'
				expandMacrosWith: self game round
				with: self game totalRounds ]
				on: GameError
				do: [ :signal | signal return: 'El juego aún no ha comenzado' ])
		applying: [ :container |  ]