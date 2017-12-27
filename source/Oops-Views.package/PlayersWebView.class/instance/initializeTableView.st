initialization
initializeTableView

	tableView := self componentSupplier tableBuilder
		addColumnTitled: 'Nombre' rendering: [ :player | player name ];
		addColumnTitled: 'JIRA' rendering: [ :player | player jiraUser ];
		addColumnTitled: 'Slack' rendering: [ :player | player slackUser ];
		build.

	tableView changeContentsTo: self session oops players.

	identifiedTableView := IdentifiedWebView
		forDivNamed: 'tableView'
		containing: [ :canvas | canvas render: tableView ]