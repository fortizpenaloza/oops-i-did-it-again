tests
testPlayersRankings

	| oops jiraTempo |

	jiraTempo := JIRATempo
		configuredBy: (JIRATempoConfiguration username: 'jiratv' password: 'MP457susana84moria').

	Tempo
		value: jiraTempo
		during: [ oops := OopsApplication new.

			self should: [ oops previousGamePlayersRankings isEmpty ] raise: AssertionFailed.
			self assert: oops playersRankings isEmpty.

			oops
				addPlayer:
					(Player
						named: 'Francisco Ortiz Peñaloza'
						signingIntoJiraWith: 'fortiz'
						andSlackWith: 'f.ortiz').

			oops
				addPlayer:
					(Player
						named: 'Maximiliano Tabacman'
						signingIntoJiraWith: 'mtabacman'
						andSlackWith: 'm.tabacman').

			oops
				addPlayer:
					(Player
						named: 'Gabriel Cotelli'
						signingIntoJiraWith: 'gcotelli'
						andSlackWith: 'g.cotelli').

			oops playRound.

			self
				assert: oops previousGamePlayersRankings isEmpty;
				assert: oops playersRankings isEmpty.

			oops playRound.

			self
				assert: oops playersRankings size equals: 3;
				assertCollection: oops playersRankings asArray
					equals:
					{(PlayerRanking of: self francisco ranked: 1 with: 3).
					(PlayerRanking of: self maximiliano ranked: 2 with: 0).
					(PlayerRanking of: self gabriel ranked: 3 with: 0)} ]