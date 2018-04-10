accessing
membersOf: team

	^ (CollectionFormatter separatingWith: $, andLastWith: $y)
		format: team members