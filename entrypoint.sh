#!/bin/bash
set -e

echo "#################################################"
echo "Starting the Hugo Action"

hugo "$@"

echo "#################################################"
echo "Completed the Hugo Action"
