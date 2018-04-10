private - building
fields

	| fields |

	fields := OrderedCollection new.

	self playersGroupedByScore
		collect: [ :players | 
			self fieldBuilder
				value: (roundScore scoreOf: players anyOne)
				value: players ]
		into: fields.

	^ fields asArray