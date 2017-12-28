enumerating
withPlayersAndItsScoreCollect: playersAndScoreBlock

	| playersScoresGroupedByScore |

	playersScoresGroupedByScore := (playersScores select: [ :playerScore | playerScore score > 0 ])
		groupedBy: #score.

	^ playersScoresGroupedByScore associations
		collect: [ :association | playersAndScoreBlock value: (association value collect: #player )value: association key ]