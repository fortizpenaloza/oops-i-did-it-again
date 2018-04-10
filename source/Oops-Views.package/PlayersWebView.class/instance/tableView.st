accessing
tableView

	| tableView |

	tableView := self componentSupplier tableBuilder
		addColumnTitled: 'Nombre' rendering: [ :player | player name ];
		addColumnTitled: 'JIRA' rendering: [ :player | player jiraUser ];
		addColumnTitled: 'Slack' rendering: [ :player | player slackUser ];
		addUntitledColumnRendering: [ :player | self deleteLinkFor: player ];		
		build.

	tableView changeContentsTo:
		self oops players.

	^ tableView