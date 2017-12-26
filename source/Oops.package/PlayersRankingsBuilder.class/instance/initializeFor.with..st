initialization
initializeFor: players with: roundScores

	playersScores := OrderedCollection new.

	players
		do: [ :player | | totalScore |
			totalScore := roundScores sumNumbers: [ :roundScore | roundScore scoreOf: player ].
			playersScores add: (PlayerScore of: player with: totalScore) ]