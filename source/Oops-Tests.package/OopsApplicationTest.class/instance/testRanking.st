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
			
	oops updateRanking.
	
	"player rankings... rank"
				
	self assert: oops playersRankings size equals: 3;
		assert: oops playersRankings first points equals: 3;
		assert: oops playersRankings second  points equals: 2;
		assert: oops playersRankings third points equals: 1