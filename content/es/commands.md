+++
title = "Comandos para la línea de comandos"
+++

Este programa también tiene interfaz para la consola.

**Utilización:** `crow [opciones] texto`

| Opción                     | Descripción                                                                                                                   |
| -------------------------- | ----------------------------------------------------------------------------------------------------------------------------- |
| `-h, --help`               | Muestra la ayuda                                                                                                              |
| `-v, --version`            | Muestra la información de la versión                                                                                          |
| `-c, --codes`              | Muestra los códigos de los idiomas                                                                                            |
| `-s, --source <code>`      | Especifica el idioma original (de manera predeterminada, el motor de traducción intentará determinar el idioma por su cuenta) |
| `-t, --translation <code>` | Especifica el(los) idioma(s) de traducción separados por '+' (de manera predeterminada, es utilizado el idioma del sistema)   |
| `-l, --locale <code>`      | Especifica el idioma del traductor (de manera predeterminada, es utilizado el idioma del sistema)                             |
| `-e, --engine <engine>`    | Especifica el motor de traducción del traductor ('google', 'yandex' o 'bing'), Google es utilizado de manera predeterminada   |
| `-p, --speak-translation`  | Reproduce hablando la traducción                                                                                              |
| `-u, --speak-source`       | Reproduce hablando el texto origen                                                                                            |
| `-f, --file`               | Lee el texto origen desde un archivo. Los argumentos serán interpretados como las rutas del archivo                           |
| `-i, --stdin`              | Añade los datos de la entrada estándar (stdin) al texto origen                                                                |
| `-a, --audio-only`         | Muestra el texto solo para reproducir hablando cuando se utiliza `--speak-translation` o `--speak-source`                     |
| `-b, --brief`              | Imprimir solo traducciones                                                                                                    |
| `-j, --json`               | Salida de impresión formateada como JSON                                                                                      |

**Nota:** Si no le pasas argumentos al programa, se lanza la interfaz gráfica.
