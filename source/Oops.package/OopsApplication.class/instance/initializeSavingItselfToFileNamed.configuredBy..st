initialization
initializeSavingItselfToFileNamed: aFileName configuredBy: anOopsConfiguration

	fileName := aFileName.
	configuration := anOopsConfiguration.

	teams := Set new.
	players := Set new.

	currentGame := Game involving: self players during: 1.
	previousGame := Binding
		undefinedExplainedBy: 'A game is not over yet'
		raising: GameError.

	currentTeamGame := Game involving: self teams during: 1.
	previousTeamGame := Binding
		undefinedExplainedBy: 'A game is not over yet'
		raising: GameError