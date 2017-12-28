tests
testAddTeam

	| oops |

	oops := OopsApplication
		savingItselfToFileNamed: 'oops_test.fuel'
		configuredBy: self oopsConfiguration.
	self assert: oops teams isEmpty.

	oops addTeam: (Team named: 'Mercap Portfolio' consistingOf: #()).
	self
		withTheOnlyOneIn: oops teams
		do: [ :team | self assert: team name equals: 'Mercap Portfolio' ]