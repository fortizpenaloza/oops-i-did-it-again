jira tempo
teamWorkloadsFrom: workloads

	^ teams
		collect: [ :team | 
			CurrentMonthTeamWorkload
				for: team
				withAll: (workloads select: [ :workload | team members includes: workload user ]) ]