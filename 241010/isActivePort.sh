#!/bin/bash

read -p "Port : " port
res=$(netstat -tulp | grep $port)
echo $res
