accessing
headerView

	^ GenericContainerWebView
		wrapping:
			(GenericContainerWebView
				wrapping: [ :canvas | 
					canvas heading
						class: 'header red-text text-lighten-2';
						with: 'Jugadores' ]
				applying: [ :container | container addClass materialize column ])
		applying: [ :container | container addClass materialize row ]