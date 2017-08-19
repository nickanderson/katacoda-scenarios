Within the next few minutes the hub will collect the reports from the prior policy run and Mission Portal will be populated with data. Let's speed this up by manually collecting the reports.

`sudo cf-hub -q delta -H $(hostname -f) -v`{{execute}}
