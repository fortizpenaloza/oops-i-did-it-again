accessing
autoCompleteWithPlayerNamesScriptCommand

	^ ComponentScriptCommand
		toExecute: [ :canvas | 
			canvas jQuery this
				call: MaterializeConstants chips
				with:
					(Dictionary new
						at: #autocompleteOptions
							put:
							(Dictionary new
								at: #data put: self playerNames;
								yourself);
						yourself) ]