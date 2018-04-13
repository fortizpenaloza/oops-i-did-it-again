tests
setUp

	| clientConfiguration |

	httpClient := TestHTTPClient new.

	clientConfiguration := NapConfiguration 
		using: httpClient
		againstServiceOn: 'http://issues.mercap.net:8080/rest/tempo-timesheets/3'
		applying:
			{(BasicAuthentication with: 'username' password: 'password').
			(SetMIMEType to: ZnMimeType applicationJson)}.

	tempoTimesheets := Nap configuredBy: clientConfiguration