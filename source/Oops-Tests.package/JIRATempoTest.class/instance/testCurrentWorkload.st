tests
testCurrentWorkload

	| configuration tempo fran workload |

	configuration := JIRATempoConfiguration
		username: 'jiratv'
		password: 'MP457susana84moria'.
	tempo := JIRATempo configuredBy: configuration.
	fran := Player
		named: 'Francisco Ortiz Peñaloza'
		knownOnJIRAAs: 'fortiz'
		andOnSlackAs: 'f.ortiz'.

	workload := tempo currentMonthWorkloadFor: fran.

	self assert: workload unregisteredWorkHours equals: (TimeUnits second with: 48000)