#!/bin/sh -e

set -x
# called by uscan with '--upstream-version' <version> <file>
PKG=backdoor-factory
DIR=$PKG-$2
TAR=../${PKG}_$2+dfsg.orig.tar.gz

# clean up the upstream tarball
tar xvf $3
# renaming
mv the-backdoor-factory-$2 backdoor-factory-$2

tar -c -z -f $TAR -X debian/orig-tar.exclude $DIR
rm -rf $DIR $3

exit 0
