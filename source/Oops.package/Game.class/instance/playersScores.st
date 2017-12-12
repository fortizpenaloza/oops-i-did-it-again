rankings
playersScores

	| playersScores |

	playersScores := OrderedCollection new.

	players
		do: [ :player | | playerScore |

			playerScore := roundScores
				sumNumbers: [ :roundScore | roundScore scoreOf: player ].

			playersScores add:  player -> playerScore ].

	^ playersScores