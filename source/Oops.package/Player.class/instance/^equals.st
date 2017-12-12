comparing
= aPlayer

	^ self == aPlayer or: [ self class = aPlayer class and: [ name == aPlayer name]]