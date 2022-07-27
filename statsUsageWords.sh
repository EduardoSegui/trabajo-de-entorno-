#!/bin/bash
grep -oE "[a-zA-Z]{4,}" $1 | sort | uniq -c | sort -nr | head -10

