tests
testCurrentWorkload

	| configuration tempo francisco workload |

	configuration := JIRATempoConfiguration
		username: 'username'
		password: 'password'
		using: httpClient.

	tempo := JIRATempo configuredBy: configuration.

	francisco := self francisco.

	httpClient
		addExpectedResponse: (ZnResponse ok: (ZnEntity json: self franciscoWorkloadJSON)).
	workload := tempo currentMonthWorkloadOf: francisco.

	self
		assert: workload unregisteredWorkHours
		equals: (TimeUnits hour with: 20)