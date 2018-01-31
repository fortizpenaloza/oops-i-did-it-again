jira tempo
workloads

	^ players
		collect: [ :player | 
			| response |

			response := (CurrentApprovalStatus for: player jiraUser) performOn: self jiraTempo.
			CurrentMonthWorkloadParser new parseOf: player from: response	"currentMonthWorkloadOf: player" ]