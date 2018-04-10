round management
startNewTeamGame

	previousTeamGame := Binding to: currentTeamGame.
	currentTeamGame := Game involving: self teams during: configuration numberOfRounds