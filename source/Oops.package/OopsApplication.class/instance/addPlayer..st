players
addPlayer: aPlayer 
	
	self saveAfter: [ players add: aPlayer ]
	