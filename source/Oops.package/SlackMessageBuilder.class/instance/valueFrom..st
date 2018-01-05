private - building
valueFrom: playersCollection

	| formatter |

	formatter := CollectionFormatter
		separatingEachWith: $,
		andLastWith: $y
		applyingToEach: [ :player | 
			'<1s> (<2s>@<3s><4s>)'
				expandMacrosWith: player name
				with: '<'
				with: player slackUser
				with: '>' ].

	^ formatter format: playersCollection