initialization
initializeFor: players with: roundScores

	playersScores := players
		inject: OrderedCollection new
		into: [ :collection :player | 
			| totalScore |

			totalScore := roundScores sumNumbers: [ :roundScore | roundScore scoreOf: player ].
			collection
				add: (PlayerScore of: player with: totalScore);
				yourself ]