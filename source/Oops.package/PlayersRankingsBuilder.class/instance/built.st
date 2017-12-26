building
built

	^ self playersScoresSortedByScoreInDescendingOrder
		collectWithIndex:
			[ :playerScore :index | 
				PlayerRanking of: playerScore player 
				ranked: index 
				with: playerScore score ]