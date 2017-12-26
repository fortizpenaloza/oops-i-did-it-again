building
addScoreForPlayersWithUnregisteredHoursTo: playersScores

	| score |
	score := 3.

	self workloadsGroupedByUnregisteredHoursInDescendingOrder
		do: [ :groupedWorkloads | 

			playersScores
				addAll: (groupedWorkloads 
					collect: [ :workload | PlayerScore of: workload user with: score ]).

			score = 0
				ifFalse: [ score := score - 1 ] ]