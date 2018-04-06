initialize-release
playerNames

	^ self session oops players
		inject: Dictionary new
		into: [ :dictionary :player | 
			dictionary
				at: player name put: nil;
				yourself ]