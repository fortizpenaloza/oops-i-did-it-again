accessing
slideOutMenu

	^ self componentSupplier slideOutMenuBuilder
		beFixed;
		addSubheaderLabeled: 'Oops i did it again!';
		addElement: self rankingsAnchor;
		addElement: self previousGameRankingsAnchor;
		addDivider;
		addSubheaderLabeled: 'Configuración';
		addElement: self playersAnchor;
		addElement: self teamsConfigurationAnchor;
		addElement: self jiraTempoConfigurationAnchor;
		addElement: self robotAnchor;
		build