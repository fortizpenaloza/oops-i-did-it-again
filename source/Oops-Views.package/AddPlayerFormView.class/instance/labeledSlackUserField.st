private-accessing
labeledSlackUserField

	^ LabeledWebView
		displaying: 'Usuario de Slack'
		boundTo: slackUserField
		applying: [ :label |  ]