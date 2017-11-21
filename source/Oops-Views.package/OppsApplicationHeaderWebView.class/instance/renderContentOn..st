rendering
renderContentOn: aCanvas

	aCanvas
		header: [ aCanvas
				render:
					(GenericContainerWebView
						obtainingContentFrom:
							(self componentSupplier
								asynchronicAnchorLabeled: [ :canvas | 
									canvas icon
										class: 'material-icons';
										with: 'menu' ]
								applying: [ :anchor | 
									anchor addClass materialize buttonCollapse + anchor addClass materialize wavesEffect
										+ anchor addClass materialize wavesLight + anchor addClass materialize circle
										+ anchor addClass materialize hideOnLargeOnly
										+ anchor addClass oops topNavigation
										+ anchor addClass oops sideNavigationTrigger ])
						applying: [ :container | container addClass materialize container ]).
			aCanvas
				render:
					(self componentSupplier
						unorderedListApplying:
							[ :list | list addClass materialize sideNavigation + list addClass materialize fixedSideNavigation ]
						listing: #('About' 'Ranking' 'Configuration' )
						applyingToEach: [ :item |  ]) ]