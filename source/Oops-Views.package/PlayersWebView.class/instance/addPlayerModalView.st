accessing
addPlayerModalView

	| addPlayerFormView modalView |

	addPlayerFormView := AddPlayerFormView new.

	modalView := self componentSupplier dialogBuilder
		wrapping: addPlayerFormView;
		addFooterButton: self acceptButtonView;
		build.

	modalView onTrigger
		serializeForm: addPlayerFormView;
		evaluate: [ [ self session oops addPlayer: addPlayerFormView player ]
				on: InstanceCreationFailed
				do: [ :signal | signal ] ];
		render: identifiedTableWithAddButtonView.

	^ modalView