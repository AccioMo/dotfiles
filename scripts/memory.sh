#!/bin/bash
free --mega | awk 'NR==2{print $3"MB"}' # / "int($2/1000)"GB"}'
