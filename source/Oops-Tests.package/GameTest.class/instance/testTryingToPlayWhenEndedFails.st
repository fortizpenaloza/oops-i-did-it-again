tests
testTryingToPlayWhenEndedFails

	| game |

	game := Game involving: self players during: 1.

	self
		deny: game isRunning;
		deny: game isOver;
		should: [ game round ] raise: Error.

	game playersRankings
		withIndexDo: [ :playerRanking :order | 
			self
				assert: playerRanking rank equals: order;
				assert: playerRanking score equals: 0 ].

	game proceedToNextRoundAccordingTo: self secondRoundWorkloads.

	self
		deny: game isRunning;
		assert: game isOver;
		assert: game round equals: 1;
		assertCollection: game playersRankings asArray
			equals:
			{(PlayerRanking of: self nicolas ranked: 1 with: 3).
			(PlayerRanking of: self julian ranked: 2 with: 2).
			(PlayerRanking of: self maximiliano ranked: 3 with: 1).
			(PlayerRanking of: self francisco ranked: 4 with: 0).
			(PlayerRanking of: self gabriel ranked: 5 with: 0)}.

	self
		should: [ game proceedToNextRoundAccordingTo: self thirdRoundWorkloads ]
		raise: Error