private - building
fieldBuilder

	^ [ :score :players  | 
	Dictionary new
		at: 'title' put: (self titleFrom: players and: score);
		at: 'value' put: (self valueFrom: players);
		at: 'short' put: false;
		yourself ]