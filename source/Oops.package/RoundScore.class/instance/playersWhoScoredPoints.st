accessing
playersWhoScoredPoints

	^ playersScores
		select: [ :playerScore | playerScore score > 0 ]
		thenCollect: #player