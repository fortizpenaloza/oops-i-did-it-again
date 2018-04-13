installing
slackConfiguration

	| slackConfiguration |
	
	slackConfiguration := configuration at: #slack.

	^ SlackConfiguration
		postingTo: (slackConfiguration at: 'webhook') 