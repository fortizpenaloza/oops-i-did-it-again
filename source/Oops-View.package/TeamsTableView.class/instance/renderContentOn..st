rendering
renderContentOn: aCanvas
	| table addButton |
	addButton := self componentSupplier
		asynchronicButtonLabeled: 'Agregar'
		applying: CompositeComponentCommand empty.
	(addButton onTrigger) open: (AddTeamModalView new).
	table := self componentSupplier tableBuilder
		addColumnTitled: 'Name' rendering: [ :team | team name ];
		addColumnTitled: 'Members' rendering: [ :team | team members ];
		build.
	table changeContentsTo: self session context teams.
	aCanvas render: table.
	aCanvas render: addButton