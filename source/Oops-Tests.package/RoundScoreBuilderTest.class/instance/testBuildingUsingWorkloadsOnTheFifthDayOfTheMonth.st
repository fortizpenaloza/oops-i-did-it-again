tests
testBuildingUsingWorkloadsOnTheFifthDayOfTheMonth

	| roundScore |

	roundScore := (RoundScoreBuilder
		for: self players
		on: self round
		from: self workloadsOnTheFifthDayOfTheMonth) build.

	self
		assert: roundScore round equals: self round;
		assert: (roundScore scoreOf: self francisco) equals: 0;
		assert: (roundScore scoreOf: self gabriel) equals: 0;
		assert: (roundScore scoreOf: self maximiliano) equals: 1;
		assert: (roundScore scoreOf: self nicolas) equals: 3;
		assert: (roundScore scoreOf: self julian) equals: 2