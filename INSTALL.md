## Installation

As `httperr` only requires standard Python modules, just put it somewhere
in your path, e.g., `~/.local/bin/` or `/usr/local/bin/` — that's all.

However, if your Python interpreter isn't installed as `/usr/bin/python`,
you will have to change the initial shebang line

```sh
#!/usr/bin/python
```

to something more appropriate, e.g.,

```sh
#!/usr/bin/env python
```
