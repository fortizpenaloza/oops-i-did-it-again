initialize-release
initializeFor: aUser with: secondsRelativeToToday of: secondsWorked

	user := aUser.
	secondsElapsedUntilToday := secondsRelativeToToday .
	registeredWorkSeconds := secondsWorked 