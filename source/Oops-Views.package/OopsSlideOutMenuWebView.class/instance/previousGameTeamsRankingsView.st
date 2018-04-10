private-rendering
previousGameTeamsRankingsView

	^ [ PlayersRankingsWebView
		titled: 'Rankings última partida'
		of:
			self oops previousTeamGame ]
		on: GameError
		do: [ :signal | signal return: self playersRankingsNotAvailableView ]