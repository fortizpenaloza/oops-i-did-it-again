as yet unclassified
userFrom: rawUser

	^ JIRAUser named: (rawUser at: #name) displaying: (rawUser at: #displayName) and: (rawUser at: #avatar) 