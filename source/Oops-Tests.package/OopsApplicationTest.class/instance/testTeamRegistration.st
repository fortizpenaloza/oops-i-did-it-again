tests
testTeamRegistration

	| oops |

	oops := OopsApplication empty.
	self assert: oops teams isEmpty.
	
	oops register: (Team named: 'Mercap Portfolio' consistingOf: #()).
	self
		withTheOnlyOneIn: oops teams
		do: [ :team | self assert: team name equals: 'Mercap Portfolio' ]