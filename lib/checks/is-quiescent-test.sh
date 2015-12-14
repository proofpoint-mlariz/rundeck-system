#!/usr/bin/env roundup
#

# Helpers
# -------
[[ -f "$PROFILE" ]] && . $PROFILE
[[ -f "$THRESHOLDS" ]] && . $THRESHOLDS


# The Plan
# --------

describe "Check if '$RUNDECK_NODE' instance is ready to be taken out of rotation"

# The Tests
# ----------

it_has_passive_executionsMode(){
	threshold=passive
	current_mode=$EXECUTIONS_EXECUTIONMODE
	test "$current_mode" = "$threshold"
}

#
# Scheduler statistics.
#
#STATS_SCHEDULER_RUNNING=0
#STATS_SCHEDULER_THREADPOOLSIZE=10
#STATS_THREADS_ACTIVE=29
it_has_no_running_executions(){
	running=$STATS_SCHEDULER_RUNNING 
	threshold=0
	(( $running == $threshold ))
}
