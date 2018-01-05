tests
testFormatWithLastSeparator

	| formatter |
	formatter := CollectionFormatter separatingEachWith: $, andLastWith: $y.
	self assert: (formatter format: #(1 2 3)) equals: '1, 2 y 3'