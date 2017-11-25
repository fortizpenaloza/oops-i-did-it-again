accessing
unregisteredWorkHours

	^ (secondsElapsedUntilToday - registeredWorkSeconds) convertTo: TimeUnits hour 