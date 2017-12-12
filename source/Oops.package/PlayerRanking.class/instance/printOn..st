initialization
printOn: aStream

	aStream
		nextPutAll:
			('#<1p> <2p> with <3p> points' expandMacrosWith: rank with: player with: score)