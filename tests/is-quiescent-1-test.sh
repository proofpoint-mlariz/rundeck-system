#!/usr/bin/env roundup
#
#/ usage:  rerun stubbs:test -m rundeck-loadbalancer-checks -p is-quiescent [--answers <>]
#

# Helpers
# -------
[[ -f ./functions.sh ]] && . ./functions.sh

# The Plan
# --------
describe "is-quiescent"

# ------------------------------
# Replace this test. 
it_fails_without_a_real_test() {
    exit 1
}
# ------------------------------

