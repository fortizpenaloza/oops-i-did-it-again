accessing
tableView

	| tableView |

	tableView := self componentSupplier tableBuilder
		addColumnTitled: 'Nombre' rendering: [ :team | team name ];
		addColumnTitled: 'Jugadores' rendering: [ :team | self membersOf: team ];
		addUntitledColumnRendering: [ :team | 
			| deleteLink |

			deleteLink := LinkWebView asynchronicLabeled: 'Borrar' applying: [  ].
			deleteLink onTrigger
				evaluate: [ self oops deleteTeam: team ];
				render: identifiedTableWithAddButtonView.

			deleteLink ];
		build.

	tableView changeContentsTo: self session oops teams.

	^ tableView