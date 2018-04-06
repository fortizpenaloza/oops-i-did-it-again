accessing
addTeamModalView

	| addTeamFormView modalView |

	addTeamFormView := AddTeamFormView new.

	modalView := self componentSupplier dialogBuilder
		wrapping: addTeamFormView;
		addFooterButton: self acceptButtonView;
		build.

	modalView onTrigger
		serializeForm: addTeamFormView;
		evaluate: [ :playersName | 
			[ self addTeamNamed: addTeamFormView teamName consistingOf: playersName ]
				on: InstanceCreationFailed
				do: [ :signal |  ] ]
			with:
			(JSStream new
					nextPutAll:
						'$("div.chips").find("div.chip").toArray().map(function(chip) { return chip.firstChild.textContent; })';
					yourself);
		render: identifiedTableWithAddButtonView.

	^ modalView