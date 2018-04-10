initialize-release
initializeForm

	| gridView |

	gridView := self componentSupplier gridBuilder
		forSmallDevices;
		columnsPerRow: 1;
		applyingToCells: (ComponentClassificationCommand toStyleWith: MaterializeCssStyles inputField);
		addContent: self labeledNameField;
		addContent: membersField;
		build.

	form := IdentifiedWebView forFormNamed: 'add-team' containing: gridView