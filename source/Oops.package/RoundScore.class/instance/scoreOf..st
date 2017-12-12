accessing
scoreOf: aPlayer

	^ playersScores
		detect: [ :playerScore | playerScore key = aPlayer ]
		ifFound: [ :playerScore | playerScore value ]
		ifNone: [ Error signal: 'Player not found' ]