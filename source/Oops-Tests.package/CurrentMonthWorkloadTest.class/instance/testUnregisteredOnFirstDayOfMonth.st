tests
testUnregisteredOnFirstDayOfMonth

	| currentMonthWorkload |

	currentMonthWorkload := CurrentMonthWorkload
		for: self francisco
		with: (TimeUnits second with: 28800)
		of: (TimeUnits second with: 0).

	self
		assert: currentMonthWorkload user 
		equals: self francisco;
		assert: currentMonthWorkload unregisteredWorkHours
			equals: (TimeUnits hour with: 0)