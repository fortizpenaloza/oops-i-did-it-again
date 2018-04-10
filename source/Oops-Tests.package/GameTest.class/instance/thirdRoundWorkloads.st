accessing
thirdRoundWorkloads

	"On eigth day of month"

	| franciscoWorkload gabrielWorkload julianWorkload maximilianoWorkload nicolasWorkload |

	franciscoWorkload := CurrentMonthWorkload
		for: self francisco
		with: (TimeUnits second with: 230400)
		of: (TimeUnits second with: 14400).
	gabrielWorkload := CurrentMonthWorkload
		for: self gabriel
		with: (TimeUnits second with: 230400)
		of: (TimeUnits second with: 144000).
	maximilianoWorkload := CurrentMonthWorkload
		for: self maximiliano
		with: (TimeUnits second with: 230400)
		of: (TimeUnits second with: 28800).
	nicolasWorkload := CurrentMonthWorkload
		for: self nicolas
		with: (TimeUnits second with: 230400)
		of: TimeUnits second nullMeasure.
	julianWorkload := CurrentMonthWorkload
		for: self julian
		with: (TimeUnits second with: 230400)
		of: (TimeUnits second with: 14400).


	^ OrderedCollection new
		add: franciscoWorkload;
		add: gabrielWorkload;
		add: maximilianoWorkload;
		add: nicolasWorkload;
		add: julianWorkload;
		add: (CurrentMonthTeamWorkload for: self management withAll: {nicolasWorkload});
		add: (CurrentMonthTeamWorkload for: self devOps withAll: {julianWorkload});
		add:
			(CurrentMonthTeamWorkload
				for: self researchAndDevelopment
				withAll:
					{franciscoWorkload.
					gabrielWorkload.
					maximilianoWorkload});
		yourself