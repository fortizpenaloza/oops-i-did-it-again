building
built

	| playersScores |

	playersScores := OrderedCollection new.

	self addScoreForPlayersWithWorkloadRegistrationUpToDateTo: playersScores.
	self addScoreForPlayersWithUnregisteredHoursTo: playersScores.
	
	self addScoreForTeamsWithWorkloadRegistrationUpTo: playersScores.
	self addScoreForTeamsWithUnregisredHoursTo: playersScores.	

	^ RoundScore of: round withAll: playersScores