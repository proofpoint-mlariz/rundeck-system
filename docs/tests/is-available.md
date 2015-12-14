
Use the `stubbs:test` command to to run test plans.

    rerun stubbs:test -m rundeck-loadbalancer-checks -p is-available

*Test plan sources*

* [is-available](tests/is-available.html)
  * it has active executionsMode
  * it is below max cpu loadAverage
  * it has memory available
  * it has scheduler threads available

