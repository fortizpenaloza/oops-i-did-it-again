rendering
tableView

	| table |

	table := self componentSupplier tableBuilder
		addColumnTitled: '#' rendering: [ :ranking | ranking rank ];
		addColumnTitled: 'Equipo' rendering: [ :ranking | ranking player ];
		addColumnTitled: 'Puntos' rendering: [ :ranking | ranking score ];
		build.

	table changeContentsTo: self session oops playersRankings.
	^ table