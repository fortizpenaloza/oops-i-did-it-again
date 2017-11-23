tests
testCurrentWorkload

	| configuration tempo fran workload |

	configuration := JIRATempoConfiguration
		username: 'jiratv'
		password: 'MP457susana84moria'.
	tempo := JIRATempo configuredBy: configuration.
	fran := User
		named: 'Francisco Ortiz Peñaloza'
		knownOnJIRAAs: 'fortiz'
		andOnSlackAs: 'f.ortiz'.

	workload := tempo currentMonthWorkloadFor: fran.

	self assert: workload secondsToReport equals: 19200