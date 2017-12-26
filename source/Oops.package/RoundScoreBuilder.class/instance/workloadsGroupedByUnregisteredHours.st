building
workloadsGroupedByUnregisteredHours

	^ (workloads reject: [ :workload | workload unregisteredWorkHours <= self zeroHours ])
		groupedBy: [ :workload | workload unregisteredWorkHours ]