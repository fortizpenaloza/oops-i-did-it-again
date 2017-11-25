updating
updateRoot: aRoot

	| builder |

	super updateRoot: aRoot.

	builder := CascadingStyleSheetBuilder new
		declareRuleSetFor: [ :selector | selector header , selector main ]
			with: [ :style | style paddingLeft: 300 px ];
		declare: [ :cssBuilder | 
			cssBuilder
				declareRuleSetFor: [ :selector | selector header , selector main ]
				with: [ :style | style paddingLeft: 0 px ] ]
			forMediaMatching: [ :queryBuilder | queryBuilder maxWidth:  992 px ].

	aRoot addStyle: builder build printString