accessing
jiraTempoConfiguration

	^ Nap
		configuredBy:
			(NapConfiguration using: tempoHTTPClient againstServiceOn: 'http://issues.mercap.net:8080/rest/tempo-timesheets/3' applying: #())