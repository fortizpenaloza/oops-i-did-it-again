tests
testTeamRegistering
	| oops |
	oops := Oops empty.
	self assert: oops teams isEmpty.
	oops register: (Team named: 'Mercap Portfolio' consistingOf: #() ).
	self
		deny: oops teams isEmpty;
		assert: oops teams size equals: 1;
		withTheOnlyOneIn: oops teams do: [ :team | self assert: team name equals: 'Mercap Portfolio' ]