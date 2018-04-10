accessing
deleteLinkFor: aPlayer

	| deleteLink |

	deleteLink := LinkWebView asynchronicLabeled: 'Borrar' applying: [  ].
	deleteLink onTrigger
		evaluate: [ self oops deletePlayer: aPlayer ];
		render: identifiedTableWithAddButtonView.
	^ deleteLink