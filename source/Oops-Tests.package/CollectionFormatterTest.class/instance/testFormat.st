tests
testFormat

	| formatter |
	formatter := CollectionFormatter separatingEachWith: $,.
	self assert: (formatter format: #(1 2 3)) equals: '1, 2, 3'