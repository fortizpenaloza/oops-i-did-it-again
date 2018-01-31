baselines
setUpDependencies: spec

	spec
		baseline: 'Buoy'
		with: [ spec
				repository: 'github://ba-st/Buoy:master/source';
				loads: #('Deployment') ].

	spec
		baseline: 'Chalten'
		with: [ spec
				repository: 'github://ba-st/chalten:v6.0.0/repository';
				loads: #('Core') ].

	spec
		baseline: 'WillowMaterialize'
		with: [ spec
				repository: 'github://fortizpenaloza/Willow-Materialize:master/source';
				loads: #('Development') ].

	spec
		baseline: 'TestHTTPClient'
		with: [ spec
				repository: 'github://fortizpenaloza/Test-HTTP-Client:master/source';
				loads: #('Development') ].

	spec
		configuration: 'Teapot'
		with: [ spec
				versionString: #stable;
				repository: 'http://smalltalkhub.com/mc/zeroflag/Teapot/main/' ].

	spec
		configuration: 'PolyMath';
		with: [ spec
				repository: 'http://smalltalkhub.com/mc/PolyMath/PolyMath/main';
				version: '0.95';
				loads: 'Math-Random' ]