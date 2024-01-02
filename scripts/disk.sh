#!/bin/bash
df -BGB | grep '^/dev/nvme0n1p5' | awk '{print $5" - "$4" free"}'
