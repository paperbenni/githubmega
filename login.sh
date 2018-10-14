#!/usr/bin/expect
set timeout 30

spawn /home/user/path/rclone config
sleep 2
send "n\r"
expect "name*"
send "mega\r"
expect "Stora*"
send "mega\r"
expect "user*"
send "RUSER\r"
sleep 1
send "y\r"
expect "pass*"
send "RPASS\r"
sleep 1
send "MPASS\r"
sleep 1
# no advanced config
send "n\r"
sleep 1
#yup, it's all right
send "y\r"
#quit config
sleep 3
send "q\r"