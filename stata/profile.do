if c(os)=="Windows" {
  sysdir set PLUS "C:\Users\Andrea\.ado\plus"
  sysdir set PERSONAL "C:\Users\Andrea\.ado\personal"
  sysdir set OLDPLACE "C:\Users\Andrea\.ado"
}
else if c(os)=="Unix" {
  sysdir set PLUS "/home/andrea/.ado/plus"
  sysdir set PERSONAL "/home/andrea/.ado/personal"
  sysdir set OLDPLACE "/home/andrea/.ado"
}
