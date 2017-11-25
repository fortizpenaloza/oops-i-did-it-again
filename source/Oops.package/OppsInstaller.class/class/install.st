installation
install

	| application |

	Smalltalk globals at: #Oops put: OopsApplication empty.

	application := OopsWillowApplication registerAsDevelopmentApplication.
	application filter configuration at: #exceptionHandler put: WADebugErrorHandler.
	application.