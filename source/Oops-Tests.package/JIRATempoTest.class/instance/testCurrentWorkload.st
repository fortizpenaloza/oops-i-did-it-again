tests
testCurrentWorkload

	| configuration tempo fran workload |

	configuration := JIRATempoConfiguration
		username: 'jiratv'
		password: 'MP457susana84moria'
		using: httpClient.

	tempo := JIRATempo configuredBy: configuration.

	fran := Player
		named: 'Francisco Ortiz Peñaloza'
		signingIntoJiraWith: 'fortiz'
		andSlackWith: 'f.ortiz'.

	httpClient
		addExpectedResponse: (ZnResponse ok: (ZnEntity json: self franWorkloadJSON)).
	workload := tempo currentMonthWorkloadOf: fran.

	self assert: workload unregisteredWorkHours equals: (TimeUnits hour with: 20)