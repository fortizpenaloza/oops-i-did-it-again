API
parseOf: aUser from: response

	^ [ :string :user | 
	(NeoJSONReader on: string readStream)
		for: CurrentMonthWorkload
			customDo: [ :mapping | 
			mapping
				decoder: [ :raw | 
					CurrentMonthWorkload
						for: user
						with: (TimeUnits second with: (raw at: 'requiredSecondsRelativeToday'))
						of: (TimeUnits second with: (raw at: 'workedSeconds')) ] ];
		nextAs: CurrentMonthWorkload ] value: response value: aUser