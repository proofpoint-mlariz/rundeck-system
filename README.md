Use *rundeck-loadbalancer-checks" to manage loadbalancer rotation.

Example

	export RUNDECK_URL=http://targa:4440 RUNDECK_USER=admin RUNDECK_PASSWORD=sekrit
	rerun rundeck-loadbalancer-checks:is-available \
		--thresholds "THRESHOLDS_CPU_LOADAVERAGE=1 THRESHOLDS_MEM_FREE=90 THRESHOLDS_THREADS FREE=1" \
		--profile -  < <(rerun rundeck-loadbalancer-checks:system-info)

### Create a standalone script
Use the *stubbs:archive* command to create a standalone script:

	rerun stubbs:archive --modules rundeck-loadbalancer-checks \
		--file rundeck-loadbalancer-checks \
		--template modules/rundeck-loadbalancer-checks/templates/archive

Then you can run the same action using the `rundeck-loadbalancer-checks` script:

	./rundeck-loadbalancer-checks is-available \
		--thresholds "THRESHOLDS_CPU_LOADAVERAGE=8 THRESHOLDS_MEM_FREE_PCT=90 THRESHOLDS_THREADS_FREE=100" \
		--profile -  < <(./rundeck-loadbalancer-checks system-info)		
