building
addScoreForPlayersWithUnregisteredHoursTo: playersScores

	| score |
	score := 3.

	self workloadsOrderedByUnregisteredHoursInDescendingOrder
		do: [ :workloads | 

			playersScores
				addAll: (workloads 
					collect: [ :workload | PlayerScore of: workload user is: score ]).

			score = 0
				ifFalse: [ score := score - 1 ] ]