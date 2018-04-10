private - building
valueFrom: playersCollection

	| formatter |

	formatter := CollectionFormatter
		separatingWith: $,
		andLastWith: $y
		applyingToEach: [ :player | 
			'<1s> (<2s>)'
				expandMacrosWith: player name
				with: (self slackUserOf: player) ].

	^ formatter format: playersCollection