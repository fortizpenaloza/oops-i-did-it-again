accessing workloads
workloadsOnTheEigthDayOfTheMonth

	^ OrderedCollection new
		add:
			(CurrentMonthWorkload
				for: self francisco
				with: (TimeUnits second with: 230400)
				of: (TimeUnits second with: 14400));
		add:
			(CurrentMonthWorkload
				for: self gabriel
				with: (TimeUnits second with: 230400)
				of: (TimeUnits second with: 144000));
		add: (CurrentMonthWorkload
				for: self maximiliano 
				with: (TimeUnits second with: 230400)
				of: (TimeUnits second with: 28800));
		add: (CurrentMonthWorkload
				for: self nicolas 
				with: (TimeUnits second with: 230400)
				of: (TimeUnits second nullMeasure));
		add: (CurrentMonthWorkload
				for: self julian 
				with: (TimeUnits second with: 230400)
				of: (TimeUnits second with: 14400));
		yourself