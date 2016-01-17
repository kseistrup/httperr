#!/bin/sh
# -*- mode: sh; coding: utf-8 -*-

ME="${0##*/}"

##############################################################################
# This program is free software; you can redistribute it and/or modify it    #
# under the terms of the GNU General Public License as published by the Free #
# Software Foundation; either version 3 of the License, or (at your option)  #
# any later version.                                                         #
#                                                                            #
# This program is distributed in the hope that it will be useful, but with-  #
# out any warranty; without even the implied warranty of merchantability or  #
# fitness for a particular purpose.  See the GNU General Public License for  #
# more details.  <http://gplv3.fsf.org/>                                     #
##############################################################################

__author__="Klaus Alexander Seistrup <klaus@seistrup.dk>"
__revision__="2016-01-17"
__version__="0.1.1 (${__revision__})"
__copyright__="\
httperr ${__version__}
Copyright © 2015-16 Klaus Alexander Seistrup <klaus@seistrup.dk>

This is free software; see the source for copying conditions.  There is no
warranty; not even for merchantability or fitness for a particular purpose.

Fork me on Github: https://github.com/kseistrup/httperr\
"
USAGE="\
Usage: httperr [OPTIONS] [STATUS [STATUS …]]

positional arguments:
  STATUS           HTTP status code or pattern

optional arguments:
  -h, --help       show this help message and exit
  -v, --version    show version information and exit
  -c, --copyright  show copying policy and exit\
"
RESPONSES="\
100	Continue
101	Switching protocols
200	OK
201	Created
202	Accepted
203	Non-authoritative information
204	No content
205	Reset content
206	Partial content
300	Multiple choices
301	Moved permanently
302	Found
303	See other
304	Not modified
305	Use proxy
306	(unused)
307	Temporary redirect
400	Bad request
401	Unauthorized
402	Payment required
403	Forbidden
404	Not found
405	Method not allowed
406	Not acceptable
407	Proxy authentication required
408	Request timeout
409	Conflict
410	Gone
411	Length required
412	Precondition failed
413	Request entity too large
414	Request-URI too long
415	Unsupported media type
416	Requested range not satisfiable
417	Expectation failed
428	Precondition required
429	Too many requests
431	Request header fields too large
451	Unavailable for leagl reasons
500	Internal server error
501	Not implemented
502	Bad gateway
503	Service unavailable
504	Gateway timeout
505	HTTP version not supported
511	Network authentication required\
"

case "${1}" in
  -h | --help )
    echo "${USAGE}"
    exit 0
  ;;
  -v | --version )
    echo "httperr/${__version__}"
    exit 0
  ;;
  -c | --copyright )
    echo "${__copyright__}"
    exit 0
  ;;
  * )
    : pass
  ;;
esac

[ -n "${1}" ] && ARGS="${@}" || read ARGS

for ARG in ${ARGS}
do
  echo "${RESPONSES}" | grep -i "${ARG}"
done \
| sort | uniq

:
# eof
