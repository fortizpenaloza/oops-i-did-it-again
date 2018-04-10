tests
testBuildingUsingWorkloadsOnTheFirstDayOfTheMonth

	| roundScore |

	roundScore := (RoundScoreBuilder
		for: self players
		on: self round
		from: self workloadsOnTheFirstDayOfTheMonth) build.

	self
		assert: roundScore round equals: self round;
		assert: (roundScore scoreOf: self francisco) equals: 0;
		assert: (roundScore scoreOf: self gabriel) equals: 0;
		assert: (roundScore scoreOf: self maximiliano) equals: 0;
		assert: (roundScore scoreOf: self nicolas) equals: 0;
		assert: (roundScore scoreOf: self julian) equals: 0