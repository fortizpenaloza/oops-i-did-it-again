initialization
initializeInvolving: aPlayersCollection during: aNumberOfRounds
	
	players := aPlayersCollection.
	rounds := aNumberOfRounds.
	
	roundScores := OrderedCollection new.
	state := GameNotStarted new