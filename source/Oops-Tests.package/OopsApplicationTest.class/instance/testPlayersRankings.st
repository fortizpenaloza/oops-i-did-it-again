tests
testPlayersRankings

	| oops |

	oops := OopsApplication
		savingItselfToFileNamed: 'oops.fuel'
		gettingWorkloadsUsing: self jiraTempoConfiguration.

	self should: [ oops previousGamePlayersRankings isEmpty ] raise: AssertionFailed.
	self assert: oops playersRankings isEmpty.

	oops addPlayer: self francisco.
	oops addPlayer: self maximiliano.
	oops addPlayer: self gabriel.

	httpClient
		addExpectedResponse: (ZnResponse ok: (ZnEntity json: self franciscoWorkloadJSON)).
	httpClient
		addExpectedResponse: (ZnResponse ok: (ZnEntity json: self maximilianoWorkloadJSON)).
	httpClient
		addExpectedResponse: (ZnResponse ok: (ZnEntity json: self gabrielWorkloadJSON)).
		
	oops playRound.

	self
		assert: oops previousGamePlayersRankings isEmpty;
		assert: oops playersRankings isEmpty.

	httpClient
		addExpectedResponse: (ZnResponse ok: (ZnEntity json: self franciscoWorkloadJSON)).
	httpClient
		addExpectedResponse: (ZnResponse ok: (ZnEntity json: self maximilianoWorkloadJSON)).
	httpClient
		addExpectedResponse: (ZnResponse ok: (ZnEntity json: self gabrielWorkloadJSON)).

	oops playRound.

	self
		assert: oops playersRankings size equals: 3;
		assertCollection: oops playersRankings asArray
			equals:
			{(PlayerRanking of: self maximiliano  ranked: 1 with: 3).
			(PlayerRanking of: self francisco ranked: 2 with: 2).
			(PlayerRanking of: self gabriel ranked: 3 with: 2)}