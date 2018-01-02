slack
postToSlack: aRoundScore

	| slackConfiguration |

	slackConfiguration  := configuration slackConfiguration. 

	slackConfiguration httpClient
		beOneShot;
		contents: (SlackMessageBuilder from: aRoundScore) built;
		contentType: ZnMimeType applicationJson;
		url: slackConfiguration webhook;
		post;
		response