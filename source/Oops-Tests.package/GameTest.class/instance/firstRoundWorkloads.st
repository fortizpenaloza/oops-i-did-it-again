accessing
firstRoundWorkloads

	"On first day of month"

	| franciscoWorkload gabrielWorkload maximilianoWorkload nicolasWorkload julianWorkload |

	franciscoWorkload := CurrentMonthWorkload
		for: self francisco
		with: (TimeUnits second with: 28800)
		of: TimeUnits second nullMeasure.
	gabrielWorkload := CurrentMonthWorkload
		for: self gabriel
		with: (TimeUnits second with: 28800)
		of: TimeUnits second nullMeasure.
	maximilianoWorkload := CurrentMonthWorkload
		for: self maximiliano
		with: (TimeUnits second with: 28800)
		of: TimeUnits second nullMeasure.
	nicolasWorkload := CurrentMonthWorkload
		for: self nicolas
		with: (TimeUnits second with: 28800)
		of: TimeUnits second nullMeasure.
	julianWorkload := CurrentMonthWorkload
		for: self julian
		with: (TimeUnits second with: 28800)
		of: TimeUnits second nullMeasure.

	^ OrderedCollection new
		add: franciscoWorkload;
		add: gabrielWorkload;
		add: maximilianoWorkload;
		add: nicolasWorkload;
		add: julianWorkload;
		add:
			(CurrentMonthTeamWorkload
				for: self management
				withAll: {nicolasWorkload});
		add:
			(CurrentMonthTeamWorkload for: self devOps withAll:
				{julianWorkload});
		add:
			(CurrentMonthTeamWorkload
				for: self researchAndDevelopment
				withAll:
					{franciscoWorkload.
					gabrielWorkload.
					maximilianoWorkload});
		yourself