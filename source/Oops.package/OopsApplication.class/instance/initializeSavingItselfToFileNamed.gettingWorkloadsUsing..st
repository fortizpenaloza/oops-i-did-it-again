initialization
initializeSavingItselfToFileNamed: aFileName gettingWorkloadsUsing: aJIRATempoConfiguration

	fileName := aFileName.
	jiraTempoConfiguration := aJIRATempoConfiguration.

	teams := Set new.
	players := Set new.

	currentGame := Game involving: self players during: 1.
	lastGame := Binding undefinedExplainedBy: 'A game is not over yet'