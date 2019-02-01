#!/bin/bash
set -e

echo "#################################################"
echo "Starting the Hugo Action"

sh -c "hugo $*"

echo "#################################################"
echo "Completed the Hugo Action"
