initialization
= aTeam

	^ self == aTeam or: [ self class = aTeam class and: [ name = aTeam name ] ]