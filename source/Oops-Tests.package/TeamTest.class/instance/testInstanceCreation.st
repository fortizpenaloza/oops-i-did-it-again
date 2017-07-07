tests
testInstanceCreation
	"'fortiz' 'ilopetegui' 'imartinez' 'ilopetegui' 'jvanecek' 'jmaestri' 'gcotelli'"

	| team members |
	members := Dictionary new
		at: 'fortiz' put: 'fran';
		at: 'jmaestri' put: 'manotas';
		yourself.
	team := Team named: 'Mercap Portfolio' consistingOf: members.
	self
		assert: team name equals: 'Mercap Portfolio';
		assert: team members
			equals:
			(Dictionary new
				at: 'fortiz' put: 'fran';
				at: 'jmaestri' put: 'manotas';
				yourself)