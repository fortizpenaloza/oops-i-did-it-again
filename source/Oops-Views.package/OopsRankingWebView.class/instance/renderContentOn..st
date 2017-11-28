rendering
renderContentOn: aCanvas

	| table |

	table := self componentSupplier tableBuilder
		addColumnTitled: 'Number' rendering: [ :number | number ];
		addColumnTitled: 'Even?' rendering: [ :number | number even ];
		build.

	table changeContentsTo: #(1 2 3).

	aCanvas
		render: self headerView;
		render: table