round management
proceedToNextRoundWhenRunningUpdatingPlayersRankingsAccordingTo: workloads

	self registerRoundScoreFrom: workloads.

	self round = rounds
		ifTrue: [ state := GameEnded on: rounds ]