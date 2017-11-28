accessing
slideOutMenu

	^ self componentSupplier slideOutMenuBuilder
		beFixed;
		addSubheaderLabeled: 'Oops i did it again!';
		addElement: self rankingAnchor;
		addDivider;
		addSubheaderLabeled: 'Configuración';
		addElement: self playersAnchor;
		addElement: self robotAnchor;
		build