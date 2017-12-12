tests
testInstanceCreation

	| game |

	game := Game involving: self players during: 8.

	self
		assert: game players equals: self players;
		deny: game isRunning;
		should: [ game round ] raise: Error;
		assert: game playersRankings isEmpty