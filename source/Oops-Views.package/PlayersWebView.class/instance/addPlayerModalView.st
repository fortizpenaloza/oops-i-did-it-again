accessing
addPlayerModalView

	| addPlayerButtonView addPlayerFormView modalView |

	addPlayerFormView := AddPlayerFormView new.

	addPlayerButtonView := self componentSupplier
		asynchronicAnchorLabeled: 'Agregar'
		applying: [ :anchor | 
			anchor addClass materialize button + anchor addClass materialize wavesEffect
				+ anchor addClass materialize wavesLight + anchor addClass materialize modalAction
				+ anchor addClass materialize modalClose ].

	modalView := self componentSupplier dialogBuilder
		wrapping: addPlayerFormView;
		addFooterButton: addPlayerButtonView;
		build.

	modalView onTrigger
		serializeForm: addPlayerFormView;
		evaluate: [ self session oops addPlayer: addPlayerFormView player.
			tableView changeContentsTo: self session oops players ];
		render: identifiedTableView.

	^ modalView