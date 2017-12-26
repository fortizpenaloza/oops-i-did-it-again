tests
testAddPlayer

	| oops |

	oops := OopsApplication new.
	self assert: oops players isEmpty.

	oops addPlayer: self francisco.

	self
		withTheOnlyOneIn: oops players
		do: [ :player | self assert: player equals: self francisco ]