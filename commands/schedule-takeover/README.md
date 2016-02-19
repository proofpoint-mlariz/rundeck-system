
Required ACL Policy if using apitoken

	description: Admin to allow scheduler/takeover
	by:
	  group: api_token_group
	context:
	  application: rundeck
	for:
	  resource:
	  - allow: admin
	    equals:
	      kind: job
