API
currentMonthWorkloadOf: anUser

	| response |

	response := configuration httpClient
		beOneShot;
		accept: ZnMimeType applicationJson;
		username: configuration username password: configuration password;
		url:
			('http://issues.mercap.net:8080/rest/tempo-timesheets/3/timesheet-approval/current/?username=<1s>'
				expandMacrosWith: anUser jiraUser);
		get.

	^ self currentMonthWorkloadOf: anUser from: response