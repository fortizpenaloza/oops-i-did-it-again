http method
get
	
	httpClient
		accept: ZnMimeType applicationJson;
		username: username password: password;
		beOneShot;
		url: url;
		addPathSegment: endpointBinding content.
	
	pathSegments do: [ :pathSegment | httpClient addPathSegment: pathSegment ].	
	queryStringFields do: [ :field | httpClient queryAt: field key put: field value ].
	
	^ httpClient 
		get.
