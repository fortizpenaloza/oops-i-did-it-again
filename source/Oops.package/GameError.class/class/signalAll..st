signalling
signalAll: failureExplanations

	^ self new
		tag: failureExplanations;
		signal: ('. ' join: failureExplanations)