# httperr

CLI wrapper around Python's HTTP status codes

## Usage

```sh
$ httperr --help
Usage: httperr [OPTIONS] [STATUS [STATUS …]]

positional arguments:
  STATUS           HTTP status code or pattern

optional arguments:
  -h, --help       show this help message and exit
  -v, --version    show version information and exit
  -c, --copyright  show copying policy and exit
```

E.g.:

```sh
$ httperr 404
404	Not found
$ httperr 100 307
100	Continue
307	Temporary redirect
$ httperr proxy
305	Use proxy
407	Proxy authentication required
$ httperr 1..
100	Continue
101	Switching protocols
```

or as a filter:

```sh
$ echo 205 | httperr
205	Reset content
```

## Requirements

Should run on Python 3 and newer iterations of Python 2 without
any modifications.

## Installation

Just drop it somewhere in your `$PATH`, e.g., `~/.local/bin/`
or `/usr/local/bin/` — that's all.  However, if your Python
interpreter is not installed as `/usr/bin/python` you will have
to change the shebang line to e.g.

```sh
#!/usr/bin/env python
```

## See also
### SSL

* https://echo.getpostman.com/status/418
* https://http.cat/
* https://httpbin.org/status/418
* https://httpstatuses.com/418

### Vanilla HTTP

* http://codes.io/
* http://get.reststat.us/
* http://httpstat.us/

### Miscellaneous
* https://news.ycombinator.com/item?id=10976194

Don't worry, be happy :smile:
