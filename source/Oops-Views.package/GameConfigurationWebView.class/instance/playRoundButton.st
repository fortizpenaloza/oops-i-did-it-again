rendering
playRoundButton

	| playRoundButton |

	playRoundButton := self componentSupplier
		asynchronicLinkActingAsButtonLabeled: 'Forzar una ronda'
		applying: [ :anchor | 
			anchor addClass materialize wavesEffect
				+ anchor addClass materialize wavesLight ].

	playRoundButton onTrigger evaluate: [ self session oops playRound ].
	^ playRoundButton