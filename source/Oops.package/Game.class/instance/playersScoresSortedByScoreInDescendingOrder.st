rankings
playersScoresSortedByScoreInDescendingOrder

	^ self playersScores
		sorted: [ :a :b | a value > b value ]