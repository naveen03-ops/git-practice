#!/bin/bash
NUMBER=$1

if { $NUMBER -gt 20}
then
echo "given numer: $NUMBER is greater than 20"
else
echo "given numer: $NUMBER is less than 20"
fi