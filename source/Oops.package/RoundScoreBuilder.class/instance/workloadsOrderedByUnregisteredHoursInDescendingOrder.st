building
workloadsOrderedByUnregisteredHoursInDescendingOrder

	^ (self workloadsGroupedByUnregisteredHours associations
		sorted: [ :a :b | a key > b key ]) collect: #value