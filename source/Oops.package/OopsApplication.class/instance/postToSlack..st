slack
postToSlack: aRoundScore

	ZnClient new
		beOneShot;
		contents: (MessageBuilder from: aRoundScore) built;
		contentType: ZnMimeType applicationJson;
		url: configuration slackConfiguration webhook post;
		response