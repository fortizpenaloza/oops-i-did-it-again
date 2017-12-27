rendering
renderContentOn: aCanvas

	aCanvas
		render:
			(GenericContainerWebView
				wrapping: self headerView
				applying: [ :container | container addClass materialize container ]).
				
	aCanvas
		render:
			(GenericContainerWebView
				wrapping: [ :canvas | 
					canvas
						render: self addButtonView;
						render: self tableView ]
				applying: [ :container | container addClass materialize container ])