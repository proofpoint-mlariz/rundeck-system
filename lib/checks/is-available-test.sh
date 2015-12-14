#!/usr/bin/env roundup
#

# Helpers
# -------
[[ -f "$PROFILE" ]] && . $PROFILE
[[ -f "$THRESHOLDS" ]] && . $THRESHOLDS


# The Plan
# --------

describe "Check if '$RUNDECK_NODE' instance is ready to be put into rotation"

# The Tests
# ----------

it_has_active_executionsMode(){
   [[ "active" == "$EXECUTIONS_EXECUTIONMODE" ]]
}

# CPU statistics.
#
#STATS_CPU_LOADAVERAGE=2.162109375
#STATS_CPU_LOADAVERAGE_UNIT=percent
#STATS_CPU_CORES=8

it_is_below_max_cpu_loadAverage() {
	current_loadAverage=$(printf "%.0f\n" "$STATS_CPU_LOADAVERAGE") 
	threshold=${THRESHOLDS_CPU_LOADAVERAGE:=100}
	(( $current_loadAverage < $threshold ))
}
#
# Memory statistics.
#
#STATS_MEM_MAX=954728448
#STATS_MEM_FREE=435339792
#STATS_MEM_TOTAL=727711744

it_has_memory_available(){
	mem_free=$STATS_MEM_FREE mem_max=$STATS_MEM_MAX 
	threshold=${THRESHOLDS_MEM_FREE_PCT:=90}
	pct_available=$(echo "scale=0; $mem_free*100/$mem_max"|bc)
	(( $pct_available < $threshold ))
}
#
# Scheduler statistics.
#
#STATS_SCHEDULER_RUNNING=0
#STATS_SCHEDULER_THREADPOOLSIZE=10
#STATS_THREADS_ACTIVE=29

it_has_scheduler_threads_available(){
	running=$STATS_SCHEDULER_RUNNING threadpoolsize=$STATS_SCHEDULER_THREADPOOLSIZE 
	threshold=${THRESHOLDS_THREADS_FREE:=90}
	pct_used=$(echo "scale=0; $running*100/$threadpoolsize"|bc)
	(( $pct_used < $threshold ))
}
