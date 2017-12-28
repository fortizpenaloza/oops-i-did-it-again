tests
testPlayRound

	| oops |

	oops := OopsApplication
		savingItselfToFileNamed: 'oops_test.fuel'
		configuredBy: self oopsConfiguration.

	self
		should: [ oops round ] raise: Error;
		assert: oops playersRankings isEmpty;
		should: [ oops previousGame playersRankings ] raise: AssertionFailed.


	oops addPlayer: self francisco.
	oops addPlayer: self maximiliano.
	oops addPlayer: self gabriel.

	tempoHTTPClient
		addExpectedResponse: (ZnResponse ok: (ZnEntity json: self franciscoWorkloadJSON)).
	tempoHTTPClient
		addExpectedResponse: (ZnResponse ok: (ZnEntity json: self maximilianoWorkloadJSON)).
	tempoHTTPClient
		addExpectedResponse: (ZnResponse ok: (ZnEntity json: self gabrielWorkloadJSON)).

	oops playRound.

	self
		should: [ oops round ] raise: Error;
		assert: oops playersRankings isEmpty;
		assert: oops previousGame isOver;
		assert: oops previousGame playersRankings isEmpty.

	tempoHTTPClient
		addExpectedResponse: (ZnResponse ok: (ZnEntity json: self franciscoWorkloadJSON)).
	tempoHTTPClient
		addExpectedResponse: (ZnResponse ok: (ZnEntity json: self maximilianoWorkloadJSON)).
	tempoHTTPClient
		addExpectedResponse: (ZnResponse ok: (ZnEntity json: self gabrielWorkloadJSON)).

	oops playRound.

	self
		assert: oops round equals: 1;
		assert: oops playersRankings size equals: 3;
		assertCollection: oops playersRankings asArray
			equals:
			{(PlayerRanking of: self maximiliano ranked: 1 with: 3).
			(PlayerRanking of: self francisco ranked: 2 with: 2).
			(PlayerRanking of: self gabriel ranked: 3 with: 2)}