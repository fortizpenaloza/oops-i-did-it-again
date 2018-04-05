installation
jiraTempoConfiguration

	| configuration |

	[ FileSystem workingDirectory / self jiraTempoConfigurationFileName
		readStreamDo: [ :stream | configuration := STONJSON fromStream: stream ] ]
		on: FileSystemError
		do: [ :signal | signal halt ].


	^ RESTClient
		configuredBy:
			(RESTClientConfiguration
				using: ZnClient new
				againstServiceOn: (configuration at: #baseURL)
				applying:
					{(BasicAuthentication with: (configuration at: #username) password: (configuration at: #password)).
					(SetMIMEType to: ZnMimeType applicationJson)})