round management
playRound

	| workloads roundScores |

	workloads := self workloads.

	self
		saveAfter: [ currentGame proceedToNextRoundAccordingTo: workloads.
			roundScores := currentGame lastRoundScores.
			currentGame isOver
				ifTrue: [ self startNewGame ] ].

	self postToSlack: roundScores using: workloads