installing
jiraTempoConfiguration

	| jiraConfiguration |
	
	jiraConfiguration := configuration at: #jira_tempo.

	^ Nap
		configuredBy:
			(NapConfiguration
				using: ZnClient new
				againstServiceOn: (jiraConfiguration at: #baseURL)
				applying:
					{(BasicAuthentication
						with: (jiraConfiguration at: #username)
						password: (jiraConfiguration at: #password)).
					(SetMIMEType to: ZnMimeType applicationJson)})