accessing
addTeamModalView

	| addTeamFormView modalView |

	addTeamFormView := AddTeamFormView new.

	modalView := self componentSupplier dialogBuilder
		wrapping: addTeamFormView;
		addFooterButton: self acceptButtonView;
		build.

	modalView onTrigger
		closeAllDialogs;
		serializeForm: addTeamFormView;
		evaluate: [ :playersName | 
			[ self
				addTeamNamed: addTeamFormView teamName
				consistingOf: playersName ]
				on: InstanceCreationFailed
				do: [ :signal |  ] ]
			with: self jQueryChipsContentQuery;
		render: identifiedTableWithAddButtonView.
		
	^ modalView