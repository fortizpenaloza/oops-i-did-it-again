private - round management
proceedToNextRoundWhenNotStatedAccordingTo: workloads

	state := GameRunning on: 1.

	self registerRoundScoreAccordingTo: workloads.

	self round = totalRounds
		ifTrue: [ state := GameOver on: totalRounds ]