round management
playIndividualGameRoundAccordingTo: workloads

	| roundScores |

	self
		saveAfter: [ currentGame proceedToNextRoundAccordingTo: workloads.
			roundScores := currentGame lastRoundScores.
			currentGame isOver
				ifTrue: [ self startNewIndividualGame ] ].

	self postToSlack: roundScores using: workloads