*Oops-Views
forMainNamed: aName containing: aView applying: aComponentCommand

	^ self
		forComponentBuiltUsing: [ :canvas | canvas main ]
		named: aName
		containing: aView
		applying: aComponentCommand