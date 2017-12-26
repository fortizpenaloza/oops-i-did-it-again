rendering
renderContentOn: aCanvas

	| table |

	table := self componentSupplier tableBuilder
		addColumnTitled: '#' rendering: [ :ranking | ranking rank ];
		addColumnTitled: 'Jugador' rendering: [ :ranking | ranking player ];
		addColumnTitled: 'Puntos' rendering: [ :ranking | ranking score ];
		build.

	table changeContentsTo: 	self session oops playersRankings.

	aCanvas
		render: self headerView;
		render: table