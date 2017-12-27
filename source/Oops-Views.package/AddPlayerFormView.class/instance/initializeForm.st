initialize-release
initializeForm

	form := IdentifiedWebView
		forFormNamed: 'add-player'
		containing: [ :canvas | | grid |
			
			grid := self componentSupplier gridBuilder
				forSmallDevices;
				columnsPerRow: 1;
				applyingToCells:
					(ComponentClassificationCommand 
						toStyleWith: MaterializeCssStyles inputField);
				addContent: self labeledNameField;
				addContent: self labeledJIRAUserField;
				addContent: self labeledSlackUserField;
				build.

			canvas render: grid ]