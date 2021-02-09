#!/bin/bash

var1="version: 2.0.7"
var2="version: 2.0.8"
echo "${var2} replace ${var1}"

#grep -rl "${var1}"
sed -i "s/${var1}/${var2}/g" `grep -rl "${var1}"`

