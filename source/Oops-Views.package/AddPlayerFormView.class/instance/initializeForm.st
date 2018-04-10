initialize-release
initializeForm

	| gridView |

	gridView := self componentSupplier gridBuilder
		forSmallDevices;
		columnsPerRow: 1;
		applyingToCells: (ComponentClassificationCommand toStyleWith: MaterializeCssStyles inputField);
		addContent: self labeledNameField;
		addContent: self labeledJIRAUserField;
		addContent: self labeledSlackUserField;
		build.


	form := IdentifiedWebView forFormNamed: 'add-player' containing: gridView