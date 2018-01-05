private - building
playersGroupedByScore

	^ roundScore playersWhoScoredPoints
		groupedBy: [ :player | roundScore scoreOf: player ]