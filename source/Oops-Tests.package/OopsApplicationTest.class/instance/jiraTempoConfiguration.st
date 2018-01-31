accessing
jiraTempoConfiguration

	^ RESTClient
		configuredBy:
			(RESTClientConfiguration using: tempoHTTPClient againstServiceOn: 'http://issues.mercap.net:8080/rest/tempo-timesheets/3' applying: #())