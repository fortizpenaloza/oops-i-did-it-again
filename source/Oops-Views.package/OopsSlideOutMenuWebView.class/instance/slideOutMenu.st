private-rendering
slideOutMenu

	^ self componentSupplier slideOutMenuBuilder
		beFixed;
		addSubheaderLabeled: 'Oops i did it again!';
		addDivider;
		addSubheaderLabeled: 'Posiciones individuales';
		addElement: self currentRankingsLink;
		addElement: self previousGameRankingsLink;
		addDivider;
		addSubheaderLabeled: 'Posiciones por equipos';
		addElement: self currentTeamsRankingsLink;
		addElement: self previousGameTeamsRankingsLink;		
		addDivider;
		addSubheaderLabeled: 'Configuración';
		addElement: self playersConfigurationLink;
		addElement: self teamsConfigurationLink;
		addElement: self gameConfigurationLink;
		build