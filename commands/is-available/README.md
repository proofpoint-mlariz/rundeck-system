Run the command, piping the system info from standard input:	

	rerun rundeck-system:is-available \
		--thresholds "THRESHOLDS_CPU_LOADAVERAGE=8 THRESHOLDS_MEM_FREE_PCT=90 THRESHOLDS_THREADS_FREE=100" \
		--profile -  < <(rerun rundeck-system:get-system-info)

Output

	[info] rundeck-system:is-available: Reading profile from stdin
	[info] rundeck-system:is-available: Reading thresholds from command line
	Check if 'Targa.local' instance is ready to be put into rotation
	  it_has_active_executionsMode:                    [PASS]
	  it_is_below_max_cpu_loadAverage:                 [PASS]
	  it_has_memory_available:                         [PASS]
	  it_has_scheduler_threads_available:              [PASS]
	=========================================================
	Tests:    4 | Passed:   4 | Failed:   0
