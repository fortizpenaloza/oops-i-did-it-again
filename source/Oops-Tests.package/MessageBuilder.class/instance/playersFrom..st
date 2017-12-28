building
playersFrom: players

	| index size |

	index := 1.
	size := players size.

	^ String
		streamContents: [ :stream | 
			players
				do: [ :player | 
					index := index + 1.
					stream
						nextPutAll: ('<1s> (@<2s>)' expandMacrosWith: player name with: player slackUser) ]
				separatedBy: [ index = size
						ifTrue: [ stream nextPutAll: ' y ' ]
						ifFalse: [ stream nextPutAll: ', ' ] ] ]