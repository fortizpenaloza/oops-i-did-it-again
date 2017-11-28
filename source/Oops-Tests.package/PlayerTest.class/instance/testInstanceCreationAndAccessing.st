tests
testInstanceCreationAndAccessing

	| player |

	player := Player
		named: 'Francisco Ortiz Peñaloza'
		signingIntoJiraWith: 'fortiz'
		andSlackWith: 'f.ortiz'.

	self
		assert: player name equals: 'Francisco Ortiz Peñaloza';
		assert: player jiraUser equals: 'fortiz';
		assert: player slackUser equals: 'f.ortiz'