tests
testInstanceCreationFailsWhenNameIsNotValid

	self
		should: [ Player 
				named: '' 
				signingIntoJiraWith: 'fortiz' 
				andSlackWith: 'f.ortiz' ]
		raise: InstanceCreationFailed.

	self
		should:
			[ Player 
				named: 'Fran1' 
				signingIntoJiraWith: 'fortiz' 
				andSlackWith: 'f.ortiz' ]
		raise: InstanceCreationFailed.

	self
		should:
			[ Player 
				named: 'af.f' 
				signingIntoJiraWith: 'fortiz'
				andSlackWith: 'f.ortiz' ]
		raise: InstanceCreationFailed.

	self
		should: [ Player
				named:
					'af
			f'
				signingIntoJiraWith: 'fortiz'
				andSlackWith: 'f.ortiz' ]
		raise: InstanceCreationFailed