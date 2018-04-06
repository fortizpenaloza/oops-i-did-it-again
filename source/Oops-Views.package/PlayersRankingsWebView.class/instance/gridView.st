private-rendering
gridView

	^ self componentSupplier gridBuilder
		forSmallDevices;
		columnsPerRow: 1;
		addContent: self headerView;
		addContent: self gameStatusView;
		addContent: self tableView;
		build