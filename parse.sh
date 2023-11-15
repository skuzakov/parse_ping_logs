#!/bin/bash

awk 'match($2,/.*/) {print $1, substr($2,RSTART,RLENGTH-2),$3, $4}' | awk 'match($4,/.*/) {print $1","$2","$3","substr($4,RSTART+1,RLENGTH-3)}'
