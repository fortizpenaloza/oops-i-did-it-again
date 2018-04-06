private-rendering
gameStatusView

	^ [ PhrasingContainerWebView wrapping: self gameStatusMessage applying: [  ] ]
		on: GameError
		do: [ :signal | signal return: self gameNotStartedStatusMessage ]