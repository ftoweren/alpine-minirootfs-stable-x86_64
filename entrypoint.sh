#!/bin/sh
/usr/sbin/sshd > /dev/null 2>&1
sleep 3
echo " * sshd ......... [OK]"
exec "$@"
