support
withTheOnlyOneIn: aCollection do: aBlockClosure 
	
	self assert: aCollection size equals: 1.
	aBlockClosure value: aCollection any.