jira tempo
workloads

	^ players
		collect: [ :player | self jiraTempo currentMonthWorkloadOf: player ]