#!/bin/sh
cppflags=`[ -n "$1" ] && echo $1 | sed -e 's/\([^ ]*\)/-Wc,\1/g'`
ldflags=`[ -n "$2"  ] && echo $2 | sed -e 's/\([^ ]*\)/-Wl,\1/g'`
ret=eval "$4" $5 $cppflags $ldflags src/mod_auth_kerb.c $3
exit $ret
