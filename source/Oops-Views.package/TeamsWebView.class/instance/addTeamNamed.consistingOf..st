accessing
addTeamNamed: aName consistingOf: playersName

	| players |

	players := self session oops players.
	^ self session oops
		addTeam:
			(Team
				named: aName
				consistingOf: (players select: [ :player | playersName includes: player name ]))