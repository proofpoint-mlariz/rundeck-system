The *info* command uses the /api/system/info API to get the instance's system info. Output can be returned in two formats: xml, or profile (default)

To access the rundeck server, you can set environment variables rather than set command line options to specify --url, --user, --password.


Example "profile" output

	#
	# System info timestamp
	#
	TIMESTAMP_EPOCH=1449691706918
	TIMESTAMP_DATETIME=2015-12-09T20:08:26Z
	#
	# Rundeck info.
	#
	RUNDECK_NODE=Targa.local
	RUNDECK_VERSION=2.6.2-SNAPSHOT
	RUNDECK_SERVERUUID=620C06AA-B109-4A72-BE95-5A781A6888EC
	#
	# Execution status and mode.
	#
	EXECUTIONS_MODE_ACTIVE=true
	EXECUTIONS_EXECUTIONMODE=active
	#
	# CPU statistics.
	#
	STATS_CPU_LOADAVERAGE=2.74853515625
	STATS_CPU_LOADAVERAGE_UNIT=percent
	STATS_CPU_CORES=8
	#
	# Memory statistics.
	#
	STATS_MEM_MAX=954728448
	STATS_MEM_FREE=388557216
	STATS_MEM_TOTAL=727711744
	#
	# Scheduler statistics.
	#
	STATS_SCHEDULER_RUNNING=0
	STATS_SCHEDULER_THREADPOOLSIZE=10

