round management
startNewIndividualGame

	previousGame := Binding to: currentGame.
	currentGame := Game involving: self players during: configuration numberOfRounds