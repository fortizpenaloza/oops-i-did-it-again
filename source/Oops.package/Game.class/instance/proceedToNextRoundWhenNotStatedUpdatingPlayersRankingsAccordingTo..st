round management
proceedToNextRoundWhenNotStatedUpdatingPlayersRankingsAccordingTo: workloads

	state := GameRunning on: 1.

	self registerRoundScoreFrom: workloads.

	self round = rounds
		ifTrue: [ state := GameEnded on: rounds ]