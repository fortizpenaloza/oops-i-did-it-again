private-rendering
previousGamePlayersRankingsView

	^ [ PlayerRankingsWebView
		titled: 'Posiciones último juego'
		of:
			self oops previousGame ]
		on: GameError
		do: [ :signal | signal return: self playersRankingsNotAvailableView ]