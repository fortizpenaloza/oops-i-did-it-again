tests
testRanking

	| oops |

	oops := OopsApplication empty.
	self assert: oops playersRankings isEmpty.
	
	oops registerPlayerNamed: 'Francisco Ortiz Peñaloza'
				signingIntoJiraWith: 'fortiz'
				andSlackWith: 'f.ortiz'.
	
	oops registerPlayerNamed: 'Maximiliano Tabacman'
				signingIntoJiraWith: 'mtabacman'
				andSlackWith: 'm.tabacman'.
				
	oops registerPlayerNamed: 'Gabriel Cotelli'
				signingIntoJiraWith: 'gcotelli'
				andSlackWith: 'g.cotelli'.
			
	oops playRound.
				
	self assert: oops playersRankings size equals: 3;
		assert: oops playersRankings first score equals: 3;
		assert: oops playersRankings first player name equals: 'Francisco Ortiz Peñaloza';
		assert: oops playersRankings second  score equals: 2;
		assert: oops playersRankings third score equals: 0