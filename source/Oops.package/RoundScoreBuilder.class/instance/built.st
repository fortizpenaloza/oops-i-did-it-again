building
built

	| sortedUnregisteredHours workloadsGroupedByUnregisteredHours workloadsWithUnregisteredHours |

	
	"upToDate"
	playersScores
		addAll:
			(workloads
				select: [ :workload | workload unregisteredWorkHours <= self zeroHours ]
				thenCollect: [ :workload | workload user -> 0 ]).

	workloadsWithUnregisteredHours := workloads
		reject:
			[ :workload | workload unregisteredWorkHours <= self zeroHours ].

	workloadsGroupedByUnregisteredHours := workloadsWithUnregisteredHours
		groupedBy: [ :workload | workload unregisteredWorkHours ].

	sortedUnregisteredHours := workloadsGroupedByUnregisteredHours keys
		sorted reversed.

	sortedUnregisteredHours
		do: [ :unregisteredHours | 
			playersScores
				addAll:
					((workloadsGroupedByUnregisteredHours at: unregisteredHours)
						collect: [ :workload | workload user -> score ]).
			score = 0
				ifFalse: [ score := score - 1 ] ].

	^ RoundScore of: round withAll: playersScores