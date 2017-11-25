rendering
renderContentOn: aCanvas

	| addButton |

	addButton := self componentSupplier
		asynchronicAnchorLabeled: 'Agregar'
		applying: [ :anchor | 
			anchor addClass materialize button + anchor addClass materialize wavesEffect
				+ anchor addClass materialize wavesLight ].
			
	addButton onTrigger
		serializeContainerForm;
		evaluate: [ self session oops
				addPlayerNamed: nameField contents
				knownOnJIRAAs: jiraUsernameField contents
				andOnSlackAs: slackUsernameField contents ].

	aCanvas
		form: [ :canvas |  | grid |

			grid := self componentSupplier gridBuilder
				forSmallDevices;
				columnsPerRow: 1;
				applyingToCells: (ComponentClassificationCommand toStyleWith: MaterializeCssStyles inputField);
				addContent: self labeledNameField;
				addContent: self labeledJIRAUsernameField;
				addContent: self labeledSlackUsernameField;
				build.

			canvas
				render: grid;
				render: addButton ]