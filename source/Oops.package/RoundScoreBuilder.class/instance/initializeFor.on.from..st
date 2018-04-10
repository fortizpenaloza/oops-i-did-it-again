initialization
initializeFor: aPlayersSet on: aRound from: aWorkloadsCollection

	round := aRound.
	workloads := aWorkloadsCollection
		select: [ :workload | aPlayersSet includes: workload user ]