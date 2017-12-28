tests
testUserInvalid

	httpClient
		addExpectedResponse: (ZnResponse badRequest: String new entity: (ZnEntity json: self userInvalidJSON)).

	self should: [ jiraTempo currentMonthWorkloadOf: self invalidUser ] raise: Error