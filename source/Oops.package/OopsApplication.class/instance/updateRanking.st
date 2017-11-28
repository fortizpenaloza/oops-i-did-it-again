as yet unclassified
updateRanking

	| configuration tempo worklogs sortedWorklogs winners i |

	configuration := JIRATempoConfiguration username: 'jiratv' password: 'MP457susana84moria'.
	tempo := JIRATempo configuredBy: configuration.

	worklogs := players
		collect: [ :player | tempo currentMonthWorkloadFor: player ].

	sortedWorklogs := worklogs asSortedCollection: [ :a :b | a unregisteredWorkHours < b unregisteredWorkHours ].

	winners := sortedWorklogs first: 3.
	
	i := 4.
	playersRanking addAll: (winners collect: [ :worklog | i := i - 1. RankingEntry for: worklog adding: i])