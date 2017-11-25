API
currentMonthWorkloadFor: anUser

	| reader response |

	response := ZnClient new
		beOneShot;
		accept: ZnMimeType applicationJson;
		username: 'jiratv' password: 'MP457susana84moria';
		url: ('http://issues.mercap.net:8080/rest/tempo-timesheets/3/timesheet-approval/current/?username=<1s>' expandMacrosWith: anUser jiraUser);
		get.

	reader := [ :string | 
	(NeoJSONReader on: string readStream)
		for: CurrentMonthWorkload
			customDo: [ :mapping | 
			mapping decoder:
				[ :raw | CurrentMonthWorkload for: anUser with: (TimeUnits second with: (raw at: 'requiredSecondsRelativeToday')) of: (TimeUnits second with: (raw at: 'workedSeconds')) ] ];
		nextAs: CurrentMonthWorkload ].

	^ reader value: response