instance creation
named: aName signingIntoJiraWith: aJIRAUser andSlackWith: aSlackUser

	self assertContainsLettersOrSpaces: aName.

	^ self new
		initializeNamed: aName
		signingIntoJiraWith: aJIRAUser
		andSlackWith: aSlackUser