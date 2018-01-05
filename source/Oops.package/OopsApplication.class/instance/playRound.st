round management
playRound

	| workloads roundScores |

	workloads := self workloads.

	self
		saveAfter: [ currentGame proceedToNextRoundAccordingTo: workloads.

			roundScores := currentGame lastRoundScores.

			currentGame isOver
				ifTrue: [ previousGame := Binding to: currentGame.
					currentGame := Game
						involving: self players
						during: configuration numberOfRounds ] ].

	self postToSlack: roundScores using: workloads