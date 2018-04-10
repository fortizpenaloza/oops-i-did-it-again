private - building
slackUserOf: player

	| slackUser |

	slackUser := (player respondsTo: #slackUser)
		ifTrue: [ Array with: player slackUser ]
		ifFalse: [ player members collect: #slackUser ].


	^ (CollectionFormatter
		separatingWith: Character comma
		andLastWith: $y 
		applyingToEach: [ :element | '<@' , element , '>' ]) format: slackUser