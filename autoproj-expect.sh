#!/opt/anaconda3/envs/auto/bin/expect -f

set timeout -1
spawn ./autoproj.sh [lindex $argv 0]
expect "*Username for 'https://github.com': "
send -- "StefanTPY\r"
expect "*Password for 'https://StefanTPY@github.com': "
send -- "$env(AT_GIT_AUTO)\n"
expect eof