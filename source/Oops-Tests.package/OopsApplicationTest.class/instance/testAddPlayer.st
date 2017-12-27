tests
testAddPlayer

	| oops |

	oops := OopsApplication 
		savingItselfToFileNamed: 'oops.fuel'
		gettingWorkloadsUsing: self jiraTempoConfiguration.
	self assert: oops players isEmpty.

	oops addPlayer: self francisco.

	self
		withTheOnlyOneIn: oops players
		do: [ :player | self assert: player equals: self francisco ]