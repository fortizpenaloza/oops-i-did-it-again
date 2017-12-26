tests
testAddTeam

	| oops |

	oops := OopsApplication new.
	self assert: oops teams isEmpty.
	
	oops addTeam: (Team named: 'Mercap Portfolio' consistingOf: #()).
	self
		withTheOnlyOneIn: oops teams
		do: [ :team | self assert: team name equals: 'Mercap Portfolio' ]