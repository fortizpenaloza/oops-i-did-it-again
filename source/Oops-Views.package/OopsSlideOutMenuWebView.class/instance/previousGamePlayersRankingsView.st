private-rendering
previousGamePlayersRankingsView

	^ [ PlayersRankingsWebView titled: 'Ranking anterior' of: self session oops previousGame ]
		on: GameError
		do: [ :signal | signal return: self playersRankingsNotAvailableView ]