round management
playTeamGameRoundAccordingTo:  workloads

	| roundScores |

	self
		saveAfter: [ currentTeamGame proceedToNextRoundAccordingTo: workloads.
			roundScores := currentTeamGame lastRoundScores.
			currentTeamGame isOver
				ifTrue: [ self startNewTeamGame ] ].

	self postToSlack: roundScores using: workloads