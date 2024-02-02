#!/usr/bin/awk -f
NR < last_line && NR > 1 {
  print $0
}