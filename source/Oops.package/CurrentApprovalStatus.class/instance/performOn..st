as yet unclassified 
performOn: aTempoTimesheets

	| response |

	response := aTempoTimesheets 
		setEndpointTo: 'timesheet-approval';
		addPathSegment: 'current';
		addQueryFieldNamed: 'username' pairedTo: player jiraUser;
		get.

	^response 