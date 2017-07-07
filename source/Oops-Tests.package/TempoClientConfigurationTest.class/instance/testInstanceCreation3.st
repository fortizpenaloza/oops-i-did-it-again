tests
testInstanceCreation3
	| usernames response reader workload workloads |
	
	usernames :=  #('fortiz' 'ilopetegui' 'imartinez' 'ilopetegui' 'jvanecek' 'jmaestri' 'gcotelli').
	workloads := OrderedCollection new.
	
	usernames do: [ :username | 
	response := ZnClient new
		beOneShot;
		accept: ZnMimeType applicationJson;
		username: 'jiratv' password: 'MP457susana84moria';
		url:
			('http://issues.mercap.net:8080/rest/tempo-timesheets/3/timesheet-approval/current/?username=<1s>' expandMacrosWith: username);
		get.
	reader := [ :string | 
	(NeoJSONReader on: string readStream)
		for: CurrentMonthWorkload
			customDo: [ :mapping | 
			mapping
				decoder: [ :raw | 
					CurrentMonthWorkload
						for: (self userFrom: (raw at: 'user'))
						with: (raw at: 'requiredSecondsRelativeToday')
						of: (raw at: 'workedSeconds') ] ];
		nextAs: CurrentMonthWorkload ].
	workload := reader value: response. 
	workloads add: workload].

	workloads asSortedCollection: [ :a :b | a secondsToReport > b secondsToReport  ].
	
	self halt.
	
	ZnClient new
	beOneShot;
	contents: '{"Primero": "Primero"}';
	contentType: ZnMimeType applicationJson;
	url:'https://hooks.slack.com/services/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';
	post.

	self assert: workloads size equals: 7