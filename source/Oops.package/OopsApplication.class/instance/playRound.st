round management
playRound

	self saveAfter: [ 
			currentGame proceedToNextRoundAccordingTo: self workloads.

			currentGame isOver
				ifTrue: [ lastGame := Binding to: currentGame.
					currentGame := Game involving: self players during: 8 ] ]