baselines
baseline: spec
	<baseline>
	spec
		for: #common
		do: [ self setUpDependencies: spec.
			spec
				package: 'Oops' with: [ spec requires: #('Teapot' 'Chalten') ];
				package: 'Oops-Tests' with: [ spec requires: 'Oops' ];
				package: 'Oops-Views' with: [ spec requires: #('Oops' 'WillowMaterialize')].
			spec
				group: 'Deployment' with: #('Oops' 'Oops-Views');
				group: 'Development' with: #('Deployment' 'Oops-Tests');
				group: 'default' with: #('Deployment') ]