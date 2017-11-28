accessing
tableView

	| table |
	
	table := self componentSupplier tableBuilder
		addColumnTitled: 'Nombre' rendering: [ :player | player name];
		addColumnTitled: 'JIRA' rendering: [ :player | player jiraUser ];
		addColumnTitled: 'Slack' rendering: [ :player | player slackUser ];
		build.

	table changeContentsTo: self session oops players.
	
	^ table 