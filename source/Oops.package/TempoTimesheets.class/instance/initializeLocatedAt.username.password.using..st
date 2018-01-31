initialization
initializeLocatedAt: aURL username: aUsername password: aPassword using: aHTTPClient

	url := aURL.
	username := aUsername.
	password := aPassword.
	httpClient := aHTTPClient.
	
	pathSegments := OrderedCollection new.
	queryStringFields := OrderedCollection new