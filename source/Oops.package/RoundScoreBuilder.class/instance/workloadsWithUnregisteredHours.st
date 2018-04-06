building
workloadsWithUnregisteredHours

	^ workloads
		reject: [ :workload | workload unregisteredWorkHours <= self zeroHours ]