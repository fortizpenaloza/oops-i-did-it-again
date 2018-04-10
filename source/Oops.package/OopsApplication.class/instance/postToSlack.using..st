slack
postToSlack: aRoundScore using: workloads

	| slackConfiguration |

	slackConfiguration := configuration slackConfiguration.

	slackConfiguration httpClient
		beOneShot;
		contents: (SlackMessageBuilder from: aRoundScore and: workloads) build;
		contentType: ZnMimeType applicationJson;
		url: slackConfiguration webhook;
		post;
		response