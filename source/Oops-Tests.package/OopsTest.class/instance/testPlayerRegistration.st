tests
testPlayerRegistration

	| oops |

	oops := OopsApplication empty.
	self assert: oops players isEmpty.
	
	oops addPlayerNamed: 'Francisco Ortiz Peñaloza'
				knownOnJIRAAs: 'fortiz'
				andOnSlackAs: 'f.ortiz'.
				
	self
		withTheOnlyOneIn: oops players
		do: [ :team | self assert: team name equals: 'Francisco Ortiz Peñaloza' ]