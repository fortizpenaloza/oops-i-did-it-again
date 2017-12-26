building
addScoreForPlayersWithWorkloadRegistrationUpToDateTo: playersScores

	playersScores
		addAll:
			(workloads
				select: [ :workload | workload unregisteredWorkHours <= self zeroHours ]
				thenCollect: [ :workload | PlayerScore of: workload user with: 0 ])