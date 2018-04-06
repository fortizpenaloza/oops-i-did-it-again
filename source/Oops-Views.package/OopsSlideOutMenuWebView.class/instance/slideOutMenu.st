private-rendering
slideOutMenu

	^ self componentSupplier slideOutMenuBuilder
		beFixed;
		addSubheaderLabeled: 'Oops i did it again!';
		addElement: self currentRankingsLink;
		addElement: self previousGameRankingsLink;
		addDivider;
		addSubheaderLabeled: 'Configuración';
		addElement: self playersLink;
		addElement: self teamsConfigurationAnchor;
		addElement: self gameConfigurationLink;
		build