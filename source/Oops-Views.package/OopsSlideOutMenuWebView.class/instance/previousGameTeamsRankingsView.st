private-rendering
previousGameTeamsRankingsView

	^ [ PlayerRankingsWebView
		titled: 'Posiciones último juego por equipos'
		of:
			self oops previousTeamGame ]
		on: GameError
		do: [ :signal | signal return: self playersRankingsNotAvailableView ]