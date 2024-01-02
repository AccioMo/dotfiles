#!/bin/bash
mpstat | awk 'END{print 100-$12"%"}'
