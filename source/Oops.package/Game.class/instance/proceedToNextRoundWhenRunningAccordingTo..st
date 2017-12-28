private - round management
proceedToNextRoundWhenRunningAccordingTo: workloads

	self registerRoundScoreAccordingTo: workloads.

	self round = totalRounds
		ifTrue: [ state := GameOver on: totalRounds ]