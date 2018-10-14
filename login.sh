#!/usr/bin/expect
set timeout 30

spawn rclone config
sleep 2
send "n\r"
expect "name*"
send "mega\r"
sleep 2
expect "Stora*"
send "mega\r"
expect "user*"
send "$RUSER\r"
sleep 2
send "y\r"
expect "pass*"
send "$RPASS\r"
sleep 3
# no advanced config
send "n\r"
sleep 3
#yup, it's all right
send "y\r"
#quit config
sleep 3
send "q\r"