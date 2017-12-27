installation
install

	| application |

	Smalltalk globals
		at: #Oops
		put:
			([ FLMaterializer materializeFromFileNamed: self serializationFileName ]
				on: FileException
				do: [ :signal | 
					signal
						return:
							(OopsApplication
								savingItselfToFileNamed: self serializationFileName
								gettingWorkloadsUsing: self jiraTempoConfiguration) ]).

	application := OopsWillowApplication registerAsDevelopmentApplication.
	"application filter configuration at: #exceptionHandler put: WADebugErrorHandler."
	application