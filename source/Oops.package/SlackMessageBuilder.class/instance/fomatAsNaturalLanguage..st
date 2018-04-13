private - building
fomatAsNaturalLanguage: aTimeMeasure

	| hours minutes |

	hours := TimeUnits hour with: aTimeMeasure amount integerPart.
	minutes := (TimeUnits hour with: aTimeMeasure amount fractionPart) convertTo: TimeUnits minute.

	^ hours isNothing
		ifTrue: [ '<1p> minutos' expandMacrosWith: minutes amount  ]
		ifFalse: [ minutes isNothing
				ifTrue: [ '<1p> horas' expandMacrosWith: hours amount ]
				ifFalse: [ '<1p> horas y <2p> minutos' expandMacrosWith: hours amount with: minutes amount truncated ] ]