rendering
renderContentOn: aCanvas

	| grid |

	grid := self componentSupplier gridBuilder
		forSmallDevices;
		columnsPerRow: 1;
		addContent: self headerView;
		addContent: self playRoundButton;
		build.
		
	aCanvas
		render:
			(GenericContainerWebView
				wrapping: grid
				applying: [ :container | container addClass materialize container ])