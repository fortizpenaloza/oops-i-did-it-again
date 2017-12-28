tests
setUp

	httpClient := TestHTTPClient new.

	jiraTempo := JIRATempo configuredBy: (JIRATempoConfiguration
		username: 'username'
		password: 'password'
		using: httpClient).
