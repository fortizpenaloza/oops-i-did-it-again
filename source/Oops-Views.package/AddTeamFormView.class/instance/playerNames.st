accessing
playerNames

	^ self oops players
		inject: Dictionary new
		into: [ :dictionary :player | 
			dictionary
				at: player name put: nil;
				yourself ]