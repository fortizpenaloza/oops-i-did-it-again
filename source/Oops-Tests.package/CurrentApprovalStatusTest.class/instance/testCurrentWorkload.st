tests
testCurrentWorkload

	| response currentMonthWorkload |

	httpClient
		addExpectedResponse: (ZnResponse ok: (ZnEntity json: self franciscoWorkloadJSON)).
		
	response := (CurrentApprovalStatus for: self francisco jiraUser)
		performOn: tempoTimesheets .
				
	currentMonthWorkload := CurrentMonthWorkloadParser new parseOf: self francisco from: response.
	
	self
		assert: currentMonthWorkload unregisteredWorkHours
		equals: (TimeUnits hour with: 20)