rendering
renderContentOn: aCanvas

	| table |

	table := self componentSupplier tableBuilder
		addColumnTitled: 'Puesto' rendering: [ :number | number ];
		addColumnTitled: 'Jugador' rendering: [ :number | number even ];
		addColumnTitled: 'Puntos' rendering: [ :number | number ];
		build.

	table changeContentsTo: #(1 2 3).

	aCanvas
		render: self headerView;
		render: table