rankings
playersRankingsWhenRunning

	"(RankingBuilder for: self players with: self rondScores) built."

	^ self playersScoresSortedByScoreInDescendingOrder
		collectWithIndex:
			[ :playerScore :index | 
				PlayerRanking 
					of: playerScore key 
					ranked: index 
					with: playerScore value ]