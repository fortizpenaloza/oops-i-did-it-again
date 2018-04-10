accessing
jQueryChipsContentQuery

	^ JSStream new
		nextPutAll:
			'$("div.chips").find("div.chip").toArray().map(function(chip) { return chip.firstChild.textContent; })';
		yourself