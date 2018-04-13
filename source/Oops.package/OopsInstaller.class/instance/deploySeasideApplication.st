private-installing
deploySeasideApplication

	OopsWillowApplication registerAsDeployedApplication.
	(ZnZincServerAdaptor port: 8080)
		codec: GRPharoUtf8Codec new;
		start