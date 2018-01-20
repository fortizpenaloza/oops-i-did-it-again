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
		evaluate: [ [ self session oops addTeam: addTeamFormView team ]
				on: InstanceCreationFailed
				do: [ :signal | signal ] ];
		render: identifiedTableWithAddButtonView.

	^ modalView