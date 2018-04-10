accessing
tableView

	| tableView |

	tableView := self componentSupplier tableBuilder
		addColumnTitled: 'Nombre' rendering: [ :team | team name ];
		addColumnTitled: 'Jugadores' rendering: [ :team | self membersOf: team ];
		addUntitledColumnRendering: [ :team | self deleteLinkFor: team ];
		build.

	tableView changeContentsTo: self session oops teams.

	^ tableView