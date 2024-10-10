#!/bin/bash

dir="$HOME"/logs
find $dir -type f -name "*.log" -mtime +7 -delete
