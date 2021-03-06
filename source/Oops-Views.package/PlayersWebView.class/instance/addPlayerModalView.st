accessing
addPlayerModalView

	| addPlayerFormView modalView |

	addPlayerFormView := AddPlayerFormView new.

	modalView := self componentSupplier dialogBuilder
		wrapping: addPlayerFormView;
		addFooterButton: self acceptButtonView;
		build.

	modalView onTrigger
		closeAllDialogs;
		serializeForm: addPlayerFormView;
		evaluate: [ [ self oops addPlayer: addPlayerFormView player ]
				on: InstanceCreationFailed
				do: [ :signal | signal ] ];
		render: identifiedTableWithAddButtonView.

	^ modalView