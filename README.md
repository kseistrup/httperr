# httperr

Convenient wrapper around Python's HTTP status codes

## Usage

```sh
$ httperr --help
Usage: httperr [OPTIONS] [CODE [CODE …]]

positional arguments:
  CODE             HTTP status code

optional arguments:
  -h, --help       show this help message and exit
  -v, --version    show version information and exit
  -c, --copyright  show copying policy and exit
$
```

E.g.:

```sh
$ httperr 404
404	Not found
$ httperr 100 307
100	Continue
307	Temporary redirect
$
```

or as a filter:

```sh
$ echo 205 | httperr
205	Reset content
$
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

:smile:
