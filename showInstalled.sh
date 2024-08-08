#!/bin/bash

# List all manually installed packages excluding common system libraries
apt-mark showmanual | grep -v -E "^(lib|linux-headers|linux-image)"
# using dbkg package manager
# This command lists all installed packages and then filters out those that are dependencies:
# comm -23 <(apt-mark showmanual | sort) <(apt-mark showauto | sort)

