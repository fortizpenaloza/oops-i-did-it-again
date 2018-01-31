API
currentMonthWorkloadOf: anUser

	| response |

	response := configuration httpClient
		beOneShot;
		accept: ZnMimeType applicationJson;
		username: configuration username password: configuration password;
		url:
			(configuration url , 'timesheet-approval/current/?username=<1s>'
				expandMacrosWith: anUser jiraUser);
		get;
		response.

	^ response isSuccess
		ifTrue: [ self parseOf: anUser from: response contents ]
		ifFalse: [ Error signal: 'El usuario es inválido' ]