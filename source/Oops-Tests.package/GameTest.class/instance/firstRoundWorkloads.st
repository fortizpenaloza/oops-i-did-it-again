accessing
firstRoundWorkloads

	"On first day of month"

	^ OrderedCollection new
		add:
			(CurrentMonthWorkload
				for: self francisco
				with: (TimeUnits second with: 28800)
				of: (TimeUnits second nullMeasure));
		add:
			(CurrentMonthWorkload
				for: self gabriel
				with: (TimeUnits second with: 28800)
				of: (TimeUnits second nullMeasure));
		add: (CurrentMonthWorkload
				for: self maximiliano 
				with: (TimeUnits second with: 28800)
				of: (TimeUnits second nullMeasure));
		add: (CurrentMonthWorkload
				for: self nicolas 
				with: (TimeUnits second with: 28800)
				of: (TimeUnits second nullMeasure));
		add: (CurrentMonthWorkload
				for: self julian 
				with: (TimeUnits second with: 28800)
				of: (TimeUnits second nullMeasure));
		yourself