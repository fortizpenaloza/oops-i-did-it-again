building
workloadsGroupedByUnregisteredHoursInDescendingOrder

	^ (self workloadsGroupedByUnregisteredHours associations
		sorted: [ :a :b | a key > b key ]) collect: #value