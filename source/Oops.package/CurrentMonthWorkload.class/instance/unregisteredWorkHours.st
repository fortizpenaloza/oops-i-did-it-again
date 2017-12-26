accessing
unregisteredWorkHours

	^ secondsElapsedUntilToday - registeredWorkSeconds - self todaySeconds
		convertTo: TimeUnits hour