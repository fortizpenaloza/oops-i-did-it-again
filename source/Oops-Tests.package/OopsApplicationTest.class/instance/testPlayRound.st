tests
testPlayRound

	| oops |

	oops := OopsApplication
		savingItselfToFileNamed: 'oops_test.fuel'
		configuredBy: self oopsConfiguration.

	self
		should: [ oops currentGame round ] raise: GameError;
		assert: oops currentGame playersRankings isEmpty;
		should: [ oops previousGame playersRankings ] raise: GameError.


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
		assert: oops currentGame playersRankings isEmpty;
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
		assert: oops currentGame round equals: 1;
		assert: oops currentGame playersRankings size equals: 3;
		assertCollection: oops currentGame playersRankings asArray
			hasSameElements:
			{(PlayerRanking of: self francisco ranked: 1 with: 3).
			(PlayerRanking of: self maximiliano ranked: 2 with: 2).
			(PlayerRanking of: self gabriel ranked: 3 with: 2)}