accessing
deleteLinkFor: aTeam

	| deleteLink |

	deleteLink := LinkWebView asynchronicLabeled: 'Borrar' applying: [  ].
	deleteLink onTrigger
		evaluate: [ self oops deleteTeam: aTeam ];
		render: identifiedTableWithAddButtonView.
	^ deleteLink