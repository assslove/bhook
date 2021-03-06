#!/bin/sh -x

touch AUTHORS
touch ChangeLog
touch INSTALL
touch NEWS
touch README

rm -f config.cache
libtoolize --force --copy
aclocal
autoconf
autoheader
automake -a --add-missing -Wall

./configure
