accessing
player

	^ Player
		named: nameField contents
		signingIntoJiraWith: jiraUserField contents
		andSlackWith: slackUserField contents