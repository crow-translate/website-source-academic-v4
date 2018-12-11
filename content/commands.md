+++
title = "CLI commands"
+++

The program also has a console interface.

**Usage:** `crow [options] text`

| Option                     | Description                                                                                    |
| -------------------------- | ---------------------------------------------------------------------------------------------- |
| `-h, --help`               | Display help                                                                                   |
| `-v, --version`            | Display version information                                                                    |
| `-s, --source <code>`      | Specify the source language (by default, engine will try to determine the language on its own) |
| `-t, --translation <code>` | Specify the translation language(s), joined by '+' (by default, the system language is used)   |
| `-l, --locale <code>`      | Specify the translator language (by default, the system language is used)                      |
| `-e, --engine <engine>`    | Specify the translator engine ('google', 'yandex' or 'bing'), Google is used by default        |
| `-p, --speak-translation`  | Speak the translation                                                                          |
| `-u, --speak-source`       | Speak the source                                                                               |
| `-a, --audio-only`         | Print text only for speaking when using `--speak-translation` or `--speak-source`.             |
| `-f, --file`               | Read source text from files. Arguments will be interpreted as file paths.                      |
| `-i, --stdin`              | Add stdin data to source text.                                                                 |

**Note:** If you do not pass startup arguments to the program, the GUI starts.
