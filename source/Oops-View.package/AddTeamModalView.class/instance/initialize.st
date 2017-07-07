rendering
initialize 

	nameField  := self componentSupplier singleLineTextFieldApplying: (ComponentPlaceholderCommand suggestedBy: #Fecha).
	membersField  := self componentSupplier singleLineTextFieldApplying: (ComponentPlaceholderCommand suggestedBy: #Fecha).	

	addTeamForm := 	IdentifiedWebView
			forFormNamed: #'add-team-modal' 
			containing: [:canvas |
				canvas render: (
			BootstrapLabeledWebView
				displaying: #Fecha
				applying: CompositeComponentCommand empty
				boundTo: nameField
				applying: CompositeComponentCommand empty).
				canvas render: (
			BootstrapLabeledWebView
				displaying: #Fecha
				applying: CompositeComponentCommand empty
				boundTo: membersField
				applying: CompositeComponentCommand empty)].