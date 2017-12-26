accessing
scoreOf: aPlayer

	^ playersScores
		detect: [ :playerScore | playerScore player = aPlayer ]
		ifFound: [ :playerScore | playerScore score ]
		ifNone: [ Error signal: 'Player not found' ]