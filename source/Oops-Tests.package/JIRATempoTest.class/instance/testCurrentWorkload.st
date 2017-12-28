tests
testCurrentWorkload

	| workload |

	httpClient
		addExpectedResponse: (ZnResponse ok: (ZnEntity json: self franciscoWorkloadJSON)).
	workload := jiraTempo currentMonthWorkloadOf: self francisco.

	self
		assert: workload unregisteredWorkHours
		equals: (TimeUnits hour with: 20)