private-accessing
labeledJIRAUserField

	^ LabeledWebView
		displaying: 'Usuario de JIRA'
		boundTo: jiraUserField 
		applying: [ :label |  ]