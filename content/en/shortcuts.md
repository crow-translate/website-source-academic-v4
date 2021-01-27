+++
title = "Shortcuts"
+++

You can change them in the settings. Some key sequences may not be available due to OS limitations.

Wayland does not support global shortcuts registration, but you can use [D-Bus](#d-bus-api) to bind actions in the system settings. For desktop environments that support [additional applications actions](https://specifications.freedesktop.org/desktop-entry-spec/desktop-entry-spec-latest.html#extra-actions) (KDE, for example) you will see them predefined in the system shortcut settings. You can also use them for X11 sessions, but you need to disable global shortcuts registration in the application settings to avoid conflicts.

## Global

| Key                                             | Description                        |
| ----------------------------------------------- | ---------------------------------- |
| <kbd>Ctrl</kbd> + <kbd>Alt</kbd> + <kbd>E</kbd> | Translate selected text            |
| <kbd>Ctrl</kbd> + <kbd>Alt</kbd> + <kbd>S</kbd> | Speak selected text                |
| <kbd>Ctrl</kbd> + <kbd>Alt</kbd> + <kbd>F</kbd> | Speak translation of selected text |
| <kbd>Ctrl</kbd> + <kbd>Alt</kbd> + <kbd>G</kbd> | Stop speaking                      |
| <kbd>Ctrl</kbd> + <kbd>Alt</kbd> + <kbd>C</kbd> | Show main window                   |
| <kbd>Ctrl</kbd> + <kbd>Alt</kbd> + <kbd>I</kbd> | Recognize text in screen area      |
| <kbd>Ctrl</kbd> + <kbd>Alt</kbd> + <kbd>O</kbd> | Translate text in screen area      |

## In main window

| Key                                               | Description                             |
| ------------------------------------------------- | --------------------------------------- |
| <kbd>Ctrl</kbd> + <kbd>Return</kbd>               | Translate                               |
| <kbd>Ctrl</kbd> + <kbd>R</kbd>                    | Swap languages                          |
| <kbd>Ctrl</kbd> + <kbd>Q</kbd>                    | Close window                            |
| <kbd>Ctrl</kbd> + <kbd>S</kbd>                    | Speak source / pause text speaking      |
| <kbd>Ctrl</kbd> + <kbd>Shift</kbd> + <kbd>S</kbd> | Speak translation / pause text speaking |
| <kbd>Ctrl</kbd> + <kbd>Shift</kbd> + <kbd>C</kbd> | Copy translation to clipboard           |

## D-Bus API

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

For example, you can show main window using `dbus-send`:

```bash
dbus-send --type=method_call --dest=io.crow_translate.CrowTranslate /io/crow_translate/CrowTranslate/MainWindow io.crow_translate.CrowTranslate.MainWindow.open
```

Or via `qdbus`:

```bash
qdbus io.crow_translate.CrowTranslate /io/crow_translate/CrowTranslate/MainWindow io.crow_translate.CrowTranslate.MainWindow.open
# or shorter
qdbus io.crow_translate.CrowTranslate /io/crow_translate/CrowTranslate/MainWindow open
```
