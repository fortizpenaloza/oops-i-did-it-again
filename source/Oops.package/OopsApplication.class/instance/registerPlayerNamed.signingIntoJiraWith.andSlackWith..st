players
registerPlayerNamed: aName signingIntoJiraWith: aJIRAUser andSlackWith: aSlackUser

	players
		add:
			(Player named: aName signingIntoJiraWith: aJIRAUser andSlackWith: aSlackUser)