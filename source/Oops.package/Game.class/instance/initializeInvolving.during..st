initialization
initializeInvolving: aPlayersCollection during: aNumberOfRounds
	
	players := aPlayersCollection.
	totalRounds := aNumberOfRounds.
	
	roundScores := OrderedCollection new.
	state := GameNotStarted new