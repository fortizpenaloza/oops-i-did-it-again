private - building
titleFrom: players and: score

	^ workloads
		detect: [ :workload | workload user = players anyOne ]
		ifFound: [ :workload | 
			'<1p> puntos por tener <2s> sin registrar para'
				expandMacrosWith: score
				with: (self fomatAsNaturalLanguage: workload unregisteredWorkHours) ]
		ifNone: [  ]