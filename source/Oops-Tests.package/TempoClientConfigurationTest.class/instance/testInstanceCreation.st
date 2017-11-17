tests
testInstanceCreation
	| response reader workload |
	
	response := ZnClient new
		beOneShot;
		accept: ZnMimeType applicationJson;
		username: 'fortiz' password: 'irie1979';
		url:
			'http://issues.mercap.net:8080/rest/tempo-timesheets/3/timesheet-approval/current/?username=fortiz';
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
	self assert: workload equals: 1