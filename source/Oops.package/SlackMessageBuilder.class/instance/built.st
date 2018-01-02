building
built

	| contents |
	
	contents := Dictionary new
				at: 'attachments'
					put:
					(Array
						with:
							(Dictionary new
								at: 'fallback' put: 'Nuevo sorteo sorpresa';
								at: 'text'
									put: 'Se realizó un nuevo sorteo sorpresa y estos son los ¿ganadores?';
								at: 'fields' put: self fields;
								at: 'color' put: 'danger';
								at: 'image_url'
									put: 'https://78.media.tumblr.com/f3dbf790767e1cb6e594ce2ab91a2d7f/tumblr_mheqkagOpf1qihp55o1_250.gif';
								yourself));
				yourself.

	^ STONJSON
		toStringPretty: contents