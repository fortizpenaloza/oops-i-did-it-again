private - instance creation
assertContainsLettersOrSpaces: aName

	AssertionCheckerBuilder new
		raising: InstanceCreationFailed;
		checking: [ :asserter | 
			asserter
				refuse: [ aName isEmpty ]
				because: 'El nombre no puede estar vacio'
				onSuccess: [ :sucessAsserter | 
					sucessAsserter
						enforce: [ aName
								allSatisfy: [ :character | character isLetter 
									or: [ character == Character space ] ] ]
						because: 'El nombre debe estar compuesto por letras y espacios' ] ];
		buildAndCheck