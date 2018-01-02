building
fields

	| playersAndScoreBlock |

	playersAndScoreBlock := [ :playersCollection :score | 
	Dictionary new
		at: 'title' put: ('<1p> puntos para' expandMacrosWith: score);
		at: 'value' put: (self playersFrom: playersCollection);
		at: 'short' put: false;
		yourself ].

	^ ((roundScore playersWhoScoredPoints
		groupedBy: [ :player | roundScore scoreOf: player ])
		collect: [ :players | 
			playersAndScoreBlock
				value: players
				value: (roundScore scoreOf: players anyOne) ]) values