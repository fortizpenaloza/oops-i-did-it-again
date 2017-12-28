slack
postToSlack: aRoundScore

	| slackConfiguration |

	slackConfiguration  := configuration slackConfiguration. 

	slackConfiguration httpClient
		beOneShot;
		contents: (MessageBuilder from: aRoundScore) built;
		contentType: ZnMimeType applicationJson;
		url: slackConfiguration webhook;
		post;
		response