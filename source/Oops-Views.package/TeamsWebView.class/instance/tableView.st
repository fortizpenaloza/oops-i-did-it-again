accessing
tableView

	| tableView |

	tableView := self componentSupplier tableBuilder
		addColumnTitled: 'Nombre' rendering: [ :team | team name ];
		addColumnTitled: 'Jugadores'
			rendering: [ :team | (CollectionFormatter separatingWith: $, andLastWith: $y) format: team members ];
		build.

	tableView changeContentsTo: self session oops teams.

	^ tableView