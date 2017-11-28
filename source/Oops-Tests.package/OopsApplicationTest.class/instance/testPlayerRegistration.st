tests
testPlayerRegistration

	| oops |

	oops := OopsApplication empty.
	self assert: oops players isEmpty.
	
	oops registerPlayerNamed: 'Francisco Ortiz Peñaloza'
				signingIntoJiraWith: 'fortiz'
				andSlackWith: 'f.ortiz'.
				
	self
		withTheOnlyOneIn: oops players
		do: [ :team | self assert: team name equals: 'Francisco Ortiz Peñaloza' ]