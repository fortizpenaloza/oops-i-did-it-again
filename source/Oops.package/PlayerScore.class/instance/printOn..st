initialization
printOn: aStream

	aStream nextPutAll: ('#<1p> with <2p> points' expandMacrosWith: player with: score)