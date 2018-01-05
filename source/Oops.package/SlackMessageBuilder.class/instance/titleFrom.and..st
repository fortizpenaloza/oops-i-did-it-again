private - building
titleFrom: players and: score

	^ workloads
		detect: [ :workload | workload user = players anyOne ]
		ifFound: [ :workload | 
			'<1p> puntos por tener <2p> sin registrar para'
				expandMacrosWith: score
				with: workload unregisteredWorkHours ]
		ifNone: [  ]