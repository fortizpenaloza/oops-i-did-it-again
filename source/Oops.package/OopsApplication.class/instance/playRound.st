as yet unclassified
playRound

	| configuration tempo worklogs |

	configuration := JIRATempoConfiguration
		username: 'jiratv'
		password: 'MP457susana84moria'.
	tempo := JIRATempo configuredBy: configuration.

	worklogs := players
		collect: [ :player | tempo currentMonthWorkloadFor: player ].

	currentGame proceedToNextRoundUpdatingPlayersRankingsAccordingTo: worklogs