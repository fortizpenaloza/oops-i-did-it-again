accessing
addTeamNamed: aName consistingOf: playersName

	^ self oops
		addTeam:
			(Team
				named: aName
				consistingOf:
					(self oops players
						select: [ :player | playersName includes: player name ]))