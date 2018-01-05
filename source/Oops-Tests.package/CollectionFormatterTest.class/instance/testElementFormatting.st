tests
testElementFormatting

	| formatter |

	formatter := CollectionFormatter
		separatingEachWith: $,
		applyingToEach: [ :element | '/<1p>/' expandMacrosWith: element ].
	self assert: (formatter format: #(1 2 3)) equals: '/1/, /2/, /3/'