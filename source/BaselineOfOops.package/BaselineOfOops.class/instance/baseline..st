baselines
baseline: spec
	<baseline>
	spec
		for: #common
		do: [ self setUpDependencies: spec.
			spec
				package: 'Oops' with: [ spec requires: #('Teapot' 'Chalten' 'PolyMath' 'Nap') ];
				package: 'Oops-Tests' with: [ spec requires: #('Oops' 'TestHTTPClient') ];
				package: 'Oops-Views' with: [ spec requires: #('Oops' 'WillowMaterialize') ].
			spec
				group: 'Deployment' with: #('Oops' 'Oops-Views');
				group: 'Development' with: #('Deployment' 'Oops-Tests');
				group: 'default' with: #('Deployment') ]