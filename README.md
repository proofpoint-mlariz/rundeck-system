Use *rundeck-system" to manage execution mode and health checks for rotation.

## Examples
Example

	export RUNDECK_URL=http://targa.local:4440 RUNDECK_USER=admin RUNDECK_PASSWORD=sekrit
	rerun rundeck-system:is-available \
		--thresholds "THRESHOLDS_CPU_LOADAVERAGE=100 THRESHOLDS_MEM_FREE=90 THRESHOLDS_THREADS=10 FREE=1" \
		--profile -  < <(rerun rundeck-system:info)

### Create a standalone script
Use the *stubbs:archive* command to create a standalone script:

	rerun stubbs:archive --modules rundeck-system \
		--file rundeck-system \
		--template modules/rundeck-system/templates/archive

Then you can run the same action using the `rundeck-system` script:

	./rundeck-system is-available \
		--thresholds "THRESHOLDS_CPU_LOADAVERAGE=8 THRESHOLDS_MEM_FREE_PCT=90 THRESHOLDS_THREADS_FREE=100" \
		--profile -  < <(./rundeck-system info)		
