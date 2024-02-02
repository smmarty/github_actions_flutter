#!/usr/bin/awk -f
BEGIN {
  if ( divider == "" ) {
    divider = "#"
  }
}
NR > 1 {
  if ( $1 == divider ) {
    if ( nearest_release_version == "" ) {
      nearest_release_version = $0
    }
  } 
}
END { 
  if (nearest_release_version != "") {
    print nearest_release_version
  }
}