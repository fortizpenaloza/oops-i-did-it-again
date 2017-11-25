accessing
headerView

	^ GenericContainerWebView
		wrapping:
			(GenericContainerWebView
				wrapping: [ :canvas | 
					canvas heading
						class: 'header';
						with: 'Jugadores' ]
				applying: [ :container | container addClass materialize column ])
		applying: [ :container | container addClass materialize row ]