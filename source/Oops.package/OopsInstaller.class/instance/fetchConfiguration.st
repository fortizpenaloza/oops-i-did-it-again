private-installing
fetchConfiguration

	[ FileSystem workingDirectory / self oopsConfigurationFileName
		readStreamDo: [ :stream | configuration := STONJSON fromStream: stream ] ]
		on: FileSystemError
		do: [ :signal | signal exit ]