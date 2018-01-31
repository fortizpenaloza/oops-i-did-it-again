tests
setUp

	| clientConfiguration |

	httpClient := TestHTTPClient new.

	clientConfiguration := RESTClientConfiguration
		using: httpClient
		againstServiceOn: 'http://issues.mercap.net:8080/rest/tempo-timesheets/3'
		applying:
			{(BasicAuthentication with: 'username' password: 'password').
			(SetMIMEType to: ZnMimeType applicationJson)}.

	tempoTimesheets := RESTClient configuredBy: clientConfiguration