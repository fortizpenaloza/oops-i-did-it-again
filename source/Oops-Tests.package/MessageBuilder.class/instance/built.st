building
built

	| contents bbbb |

	bbbb := roundScore
		withPlayersAndItsScoreCollect: [ :playersCollection :score | 
			Dictionary new
				at: 'title' put: ('<1p>...' expandMacrosWith: score);
				at: 'value' put: (self playersFrom: playersCollection);
				at: 'short' put: false;
				yourself ].

	contents := Dictionary new
		at: 'attachments'
			put:
			(Array
				with:
					(Dictionary new
						at: 'fallback' put: 'Nuevo sorteo sorpresa';
						at: 'text' put: 'Se realizó un nuevo sorteo sorpresa y estos son los ¿ganadores?';
						at: 'fields' put: bbbb;
						at: 'color' put: 'danger';
						at: 'image_url'
							put: 'https://78.media.tumblr.com/f3dbf790767e1cb6e594ce2ab91a2d7f/tumblr_mheqkagOpf1qihp55o1_250.gif';
						yourself));
		yourself.

	^ STONJSON toStringPretty: contents