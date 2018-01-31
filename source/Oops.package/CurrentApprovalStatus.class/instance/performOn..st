as yet unclassified 
performOn: aRESTClient

	| response |

	response := aRESTClient 
		setResourceTo: 'timesheet-approval/current';
		addQueryFieldNamed: 'username' pairedTo: jiraUsername;
		get.

	^response 