rendering
renderContentOn: aCanvas

	| slideOutMenu |

	slideOutMenu := self slideOutMenu.
	slideOutMenu identifyIn: aCanvas.

	aCanvas
		header: [ aCanvas
				render:
					(GenericContainerWebView
						obtainingContentFrom:
							(self componentSupplier
								asynchronicLinkActingAsButtonLabeled: [ :canvas | 
									canvas icon
										class: 'material-icons';
										with: 'menu' ]
								applying: [ :anchor | 
									anchor addClass materialize buttonCollapse
										+ anchor addClass materialize wavesEffect
										+ anchor addClass materialize wavesLight
										+ anchor addClass materialize hideOnLargeOnly
										+ anchor addClass materialize sideNavigationTrigger
										+ (anchor setData: 'target' to: slideOutMenu identifier) ])
						applying: [ :container | container addClass materialize container ]);
				render: slideOutMenu ]