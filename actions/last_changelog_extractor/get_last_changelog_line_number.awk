#!/usr/bin/awk -f
NR > 1 {
  if ( $1=="#" ) {
    if ( nearest_existed_changelog == "" ) { 
      nearest_existed_changelog = $0
      changelog_line_number = NR
    }
  } 
}
END { 
  if (nearest_existed_changelog == "") {
    print NR + 1
  }
  else {
    print changelog_line_number
  }
}