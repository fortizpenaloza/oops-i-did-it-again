round management
playRound

	| workloads |

	workloads := self workloads.

	self playIndividualGameRoundAccordingTo: workloads.
	self playTeamGameRoundAccordingTo: (self teamWorkloadsFrom: workloads)