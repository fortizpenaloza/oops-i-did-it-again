private-accessing
oopsApplication

	^ [ self savedOopsApplication ]
		on: FileException
		do: [ :signal | signal return: self newOopsApplication ]