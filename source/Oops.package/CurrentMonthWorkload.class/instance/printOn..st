printing
printOn: aStream

	aStream
		nextPutAll: ('<1p> aún debe cargar <2p>' expandMacrosWith: user with: self unregisteredWorkHours)