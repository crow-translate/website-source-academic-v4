+++
title = "Atajos de teclado"
+++

Se pueden cambiar en la sección de ajustes. Algunas combinaciones de teclas pueden no estar disponibles debido a las limitaciones con el sistema operativo.

Wayland no admite el registro de atajos de teclados globales, pero se puede utilizar [D-Bus](#api-d-bus) para vincular acciones en la configuración del sistema. Para entornos de escritorio que admitan [acciones de aplicaciones adicionales](https://specifications.freedesktop.org/desktop-entry-spec-latest.html#extra-actions) (KDE por ejemplo) los verás predefinidos en los ajustes de atajos de teclado del sistema. También puede utilizarlos para sesiones X11, pero necesitará inhibir el registro de atajos de teclado en los ajustes de la aplicación para evitar conflictos.

## Global

| Combinación de teclas                           | Descripción                                              |
| ----------------------------------------------- | -------------------------------------------------------- |
| <kbd>Ctrl</kbd> + <kbd>Alt</kbd> + <kbd>E</kbd> | Traducir el texto seleccionado                           |
| <kbd>Ctrl</kbd> + <kbd>Alt</kbd> + <kbd>S</kbd> | Reproducir hablando el texto seleccionado                |
| <kbd>Ctrl</kbd> + <kbd>Alt</kbd> + <kbd>F</kbd> | Reproducir hablando la traducción del texto seleccionado |
| <kbd>Ctrl</kbd> + <kbd>Alt</kbd> + <kbd>G</kbd> | Detener la reproducción hablada                          |
| <kbd>Ctrl</kbd> + <kbd>Alt</kbd> + <kbd>I</kbd> | Reconocer texto en el área de la pantalla                |
| <kbd>Ctrl</kbd> + <kbd>Alt</kbd> + <kbd>C</kbd> | Traducir texto en el área de la pantalla                 |

## En la pantalla principal

| Combinación de teclas                             | Descripción                                             |
| ------------------------------------------------- | ------------------------------------------------------- |
| <kbd>Ctrl</kbd> + <kbd>Enter</kbd>                | Traducir                                                |
| <kbd>Ctrl</kbd> + <kbd>R</kbd>                    | Intercambiar idiomas                                    |
| <kbd>Ctrl</kbd> + <kbd>Q</kbd>                    | Cerrar la ventana                                       |
| <kbd>Ctrl</kbd> + <kbd>S</kbd>                    | Reproducir / pausar el texto hablado del texto original |
| <kbd>Ctrl</kbd> + <kbd>Shift</kbd> + <kbd>S</kbd> | Reproducir / pausar el texo hablado de la traducción    |
| <kbd>Ctrl</kbd> + <kbd>Shift</kbd> + <kbd>C</kbd> | Copiar la traducción a la portapapeles                  |

## API D-Bus 

    io.crow_translate.CrowTranslate
    ├── /io/crow_translate/CrowTranslate/Ocr
    |   └── method void io.crow_translate.CrowTranslate.Ocr.setParameters(QVariantMap parameters);
    └── /io/crow_translate/CrowTranslate/MainWindow
        |   # Global shortcuts
        ├── method void io.crow_translate.CrowTranslate.MainWindow.translateSelection();
        ├── method void io.crow_translate.CrowTranslate.MainWindow.speakSelection();
        ├── method void io.crow_translate.CrowTranslate.MainWindow.speakTranslatedSelection();
        ├── method void io.crow_translate.CrowTranslate.MainWindow.stopSpeaking();
        ├── method void io.crow_translate.CrowTranslate.MainWindow.open();
        ├── method void io.crow_translate.CrowTranslate.MainWindow.copyTranslatedSelection();
        ├── method void io.crow_translate.CrowTranslate.MainWindow.recognizeScreenArea();
        ├── method void io.crow_translate.CrowTranslate.MainWindow.translateScreenArea();
        |   # Main window shortcuts
        ├── method void io.crow_translate.CrowTranslate.MainWindow.clearText();
        ├── method void io.crow_translate.CrowTranslate.MainWindow.cancelOperation();
        ├── method void io.crow_translate.CrowTranslate.MainWindow.swapLanguages();
        ├── method void io.crow_translate.CrowTranslate.MainWindow.openSettings();
        ├── method void io.crow_translate.CrowTranslate.MainWindow.setAutoTranslateEnabled(bool enabled);
        ├── method void io.crow_translate.CrowTranslate.MainWindow.copySourceText();
        ├── method void io.crow_translate.CrowTranslate.MainWindow.copyTranslation();
        ├── method void io.crow_translate.CrowTranslate.MainWindow.copyAllTranslationInfo();
        └── method void io.crow_translate.CrowTranslate.MainWindow.quit();

Por ejemplo, puedes mostrar la pantalla principal utilizando `dbus-send`:

```bash
dbus-send --type=method_call --dest=io.crow_translate.CrowTranslate /io/crow_translate/CrowTranslate/MainWindow io.crow_translate.CrowTranslate.MainWindow.open
```

O mediante `qdbus`:

```bash
qdbus io.crow_translate.CrowTranslate /io/crow_translate/CrowTranslate/MainWindow io.crow_translate.CrowTranslate.MainWindow.open
# o de manera más reducida
qdbus io.crow_translate.CrowTranslate /io/crow_translate/CrowTranslate/MainWindow open
```
