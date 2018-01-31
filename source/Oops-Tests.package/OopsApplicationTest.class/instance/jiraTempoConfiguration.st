accessing
jiraTempoConfiguration

	^ TempoTimesheets
		locatedAt: 'http://issues.mercap.net:8080/rest/tempo-timesheets/3/'
		username: 'username'
		password: 'password'
		using: tempoHTTPClient