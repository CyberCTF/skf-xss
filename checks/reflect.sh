#!/bin/sh
# The submitted string is written back into the page.
set -e
H=http://web:5000
curl -fsS -d "string=probe$$" "$H/home" | grep -q "probe$$"
