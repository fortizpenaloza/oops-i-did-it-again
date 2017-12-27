rendering
playRoundButton

	| playRoundButton |

	playRoundButton := self componentSupplier
		asynchronicAnchorLabeled: 'Forzar una ronda'
		applying: [ :anchor | 
			anchor addClass materialize wavesEffect
				+ anchor addClass materialize wavesLight
				+ anchor addClass materialize button ].

	playRoundButton onTrigger evaluate: [ self session oops playRound ].
	^ playRoundButton