accessing
unregisteredWorkHours

	^ secondsElapsedUntilToday - registeredWorkSeconds
		- self todayTime convertTo: self hour