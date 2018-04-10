tests
testTeamGameplay

	| game |

	game := Game involving: self teams during: 3.

	self
		deny: game isRunning;
		deny: game isOver;
		should: [ game round ] raise: Error.
	
	
	game playersRankings withIndexDo: [ :playerRanking :order | 
			self
				assert: playerRanking rank equals: order;
				assert: playerRanking score equals: 0 ].

	game proceedToNextRoundAccordingTo: self firstRoundWorkloads.

	self
		assert: game isRunning;
		deny: game isOver;
		assert: game round equals: 1.

	game playersRankings withIndexDo: [ :playerRanking :order | 
			self
				assert: playerRanking rank equals: order;
				assert: playerRanking score equals: 0 ].

	game proceedToNextRoundAccordingTo: self secondRoundWorkloads.

	self
		assert: game isRunning;
		deny: game isOver;
		assert: game players equals: self teams;
		assert: game round equals: 2;
		assertCollection: game playersRankings asArray 
			equals:
			{(PlayerRanking of: self management ranked: 1 with: 3).
			(PlayerRanking of: self devOps ranked: 2 with: 2).
			(PlayerRanking of: self researchAndDevelopment ranked: 3 with: 1)}.
			
	game proceedToNextRoundAccordingTo: self thirdRoundWorkloads.

	self
		deny: game isRunning;
		assert: game isOver;
		assert: game players equals: self teams;
		assert: game round equals: 3;
		assertCollection: game playersRankings asArray
			equals:
			{(PlayerRanking of: self management ranked: 1 with: 6).
			(PlayerRanking of: self devOps ranked: 2 with: 4).
			(PlayerRanking of: self researchAndDevelopment ranked: 3 with: 2)}