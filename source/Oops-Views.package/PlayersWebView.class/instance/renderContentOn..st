rendering
renderContentOn: aCanvas

	| gridView |

	gridView := self componentSupplier gridBuilder
		forSmallDevices;
		columnsPerRow: 1;
		addContent: self headerView;
		addContent: identifiedTableWithAddButtonView;
		build.

	aCanvas
		render:
			(GenericContainerWebView
				wrapping: gridView
				applying: [ :container | container addClass materialize container ])