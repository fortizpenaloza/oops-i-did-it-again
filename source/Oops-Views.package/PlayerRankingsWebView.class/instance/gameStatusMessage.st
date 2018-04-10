private-rendering
gameStatusMessage

	^ 'Después de <1p> rondas jugadas sobre un total de <2p> rondas.'
		expandMacrosWith: game round
		with: game totalRounds