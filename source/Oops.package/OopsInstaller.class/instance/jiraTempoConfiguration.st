installation
jiraTempoConfiguration

	| configuration |

	[ FileSystem workingDirectory / self jiraTempoConfigurationFileName
		readStreamDo: [ :stream | configuration := STONJSON fromStream: stream ] ]
		on: FileSystemError
		do: [ :signal | signal halt ].


	^ RESTClient
		locatedAt: (configuration at: 'baseURL')
		username: (configuration at: 'username')
		password: (configuration at: 'password')