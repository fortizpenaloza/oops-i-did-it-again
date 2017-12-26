private - serialization
saveAfter: aBlock 

	aBlock value.
	FLSerializer serialize: self toFileNamed: 'oops.fuel'. 
	