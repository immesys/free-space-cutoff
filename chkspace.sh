#!/bin/bash

# Configuration options
MIN_SPACE_GB=20
DEST=/ssd
# end config

available=$(df -B G $DEST | tail -1 | awk '{print $4}')
available=${available::-1}

if [ $available -lt $MIN_SPACE_GB ]
then
  echo "LOW SPACE! DISABLING RECEIVER AND SYNC2Q"
  supervisorctl stop sync2q
  supervisorctl stop receiver
else
  echo "SPACE OK"
fi
