installation
slackConfiguration

	| configuration |

	[ FileSystem workingDirectory / self slackConfigurationFileName
		readStreamDo: [ :stream | configuration := STONJSON fromStream: stream ] ]
		on: FileSystemError
		do: [ :signal | signal halt ].


	^ SlackConfiguration
		postingTo: (configuration at: 'webhook') "https://hooks.slack.com/services/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"