baselines
setUpDependencies: spec

	spec
		baseline: 'Willow'
			with: [ spec
				repository: 'github://ba-st/Willow:master/source';
				loads: #('Development') ];
		import: 'Willow'