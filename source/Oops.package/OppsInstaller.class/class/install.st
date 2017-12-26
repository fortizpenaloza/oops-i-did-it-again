installation
install

	| application jiraTempo |

	jiraTempo := JIRATempo
		configuredBy: (JIRATempoConfiguration username: 'jiratv' password: 'MP457susana84moria').
		
	Tempo
		value: jiraTempo 
		during: [ 

	Smalltalk globals
		at: #Oops
		put:
			([ FLMaterializer materializeFromFileNamed: 'oops.fuel' ]
				on: FileException
				do: [ :signal | signal return: OopsApplication new ]).

	application := OopsWillowApplication registerAsDevelopmentApplication.
	"application filter configuration at: #exceptionHandler put: WADebugErrorHandler."
	application ]