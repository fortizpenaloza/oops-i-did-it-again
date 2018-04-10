jira tempo
workloads

	^ players
		collect: [ :player | 
			CurrentMonthWorkloadParser new
				parseOf: player
				from:
					((CurrentApprovalStatus for: player jiraUser)
						performOn: self jiraTempo) ]