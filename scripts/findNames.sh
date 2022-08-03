#!/bin/bash


cat $1 | grep -oE "[[:upper:]]{1}[[:lower:]]+" | sort -d

