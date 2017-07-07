baselines
baseline: spec
	<baseline>
	spec
		for: #common
		do: [ self setUpDependencies: spec.
			spec
				package: 'Oops' with: [ spec requires: 'Willow' ];
				package: 'Oops-Tests' with: [ spec requires: 'Willow-Tests' ].
			spec
				group: 'Deployment' with: #('Oops');
				group: 'Development' with: #('Deployment' 'Oops-Tests');
				group: 'default' with: #('Deployment') ]