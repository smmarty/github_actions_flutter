#!/usr/bin/awk -f
NR < var1 && NR > 1 {
  print $0
}