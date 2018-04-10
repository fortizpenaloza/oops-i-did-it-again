building
build

	| playersScores |

	playersScores := OrderedCollection new.

	self addScoreForPlayersWithWorkloadRegistrationUpToDateTo: playersScores.
	self addScoreForPlayersWithUnregisteredHoursTo: playersScores.
	
	^ RoundScore of: round withAll: playersScores