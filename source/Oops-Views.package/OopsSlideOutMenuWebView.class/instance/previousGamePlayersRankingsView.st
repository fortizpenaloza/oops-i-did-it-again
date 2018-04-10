private-rendering
previousGamePlayersRankingsView

	^ [ PlayersRankingsWebView
		titled: 'Rankings juego anterior'
		of:
			self oops previousGame ]
		on: GameError
		do: [ :signal | signal return: self playersRankingsNotAvailableView ]