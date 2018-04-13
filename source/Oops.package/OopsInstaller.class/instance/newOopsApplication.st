private-accessing
newOopsApplication

	^ OopsApplication
		savingItselfToFileNamed: self serializationFileName
		configuredBy: self oopsConfiguration