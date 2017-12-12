initialization
initializeFor: aRound from: aWorkloadsSet 
	
	round := aRound.
	workloads := aWorkloadsSet.
	
	playersScores := OrderedCollection new.
	score := 3