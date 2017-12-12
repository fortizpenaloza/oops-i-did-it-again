initialization
= anObject

	^ self == anObject
		or: [ (self class == anObject class)
				and: [ player = anObject player
						and: [ rank = anObject rank and: [ score = anObject score ] ] ] ]