+++
title = "Горячие клавиши"
+++

Вы можете изменить эти горячие клавиши в настройках. Некоторые комбинации клавиш могут быть недоступны из-за ограничений ОС.

Wayland не поддерживает глобальные горячие клавиши, но вы можете использовать [D-Bus](#d-bus-api) для назначения действий в настройках системы. Для окружений рабочего стола, которые поддерживают [дополнительные действия приложений](https://specifications.freedesktop.org/desktop-entry-spec/desktop-entry-spec-latest.html#extra-actions) (KDE, например) вы увидите уже предопределенные горячие клавиши в системных настройках. Вы также можете использовать их для X11 сессии, но вам нужно отключить регистрацию глобальных горячих клавиш в настройках приложения для избежания конфликтов.

## Глобальные

| Комбинация                                      | Описание                            |
| ----------------------------------------------- | ----------------------------------- |
| <kbd>Ctrl</kbd> + <kbd>Alt</kbd> + <kbd>E</kbd> | Перевести выделенный текст          |
| <kbd>Ctrl</kbd> + <kbd>Alt</kbd> + <kbd>S</kbd> | Озвучить выделенный текст           |
| <kbd>Ctrl</kbd> + <kbd>Alt</kbd> + <kbd>F</kbd> | Озвучить перевод выделенного текста |
| <kbd>Ctrl</kbd> + <kbd>Alt</kbd> + <kbd>G</kbd> | Остановить озвучивание текста       |
| <kbd>Ctrl</kbd> + <kbd>Alt</kbd> + <kbd>C</kbd> | Показать главное окно               |
| <kbd>Ctrl</kbd> + <kbd>Alt</kbd> + <kbd>I</kbd> | Распознать текст в области экрана   |
| <kbd>Ctrl</kbd> + <kbd>Alt</kbd> + <kbd>O</kbd> | Перевести текст в области экрана    |

## В главном окне

| Комбинация                                        | Описание                                                   |
| ------------------------------------------------- | ---------------------------------------------------------- |
| <kbd>Ctrl</kbd> + <kbd>Return</kbd>               | Перевести                                                  |
| <kbd>Ctrl</kbd> + <kbd>R</kbd>                    | Поменять языки местами                                     |
| <kbd>Ctrl</kbd> + <kbd>Q</kbd>                    | Закрыть окно                                               |
| <kbd>Ctrl</kbd> + <kbd>S</kbd>                    | Воспроизвести / приостановить озвучивание исходного текста |
| <kbd>Ctrl</kbd> + <kbd>Shift</kbd> + <kbd>S</kbd> | Воспроизвести / приостановить озвучивание перевода         |
| <kbd>Ctrl</kbd> + <kbd>Shift</kbd> + <kbd>C</kbd> | Скопировать перевод в буфер обмена                         |

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

Например, вы можете показать главное окно с помощью `dbus-send`:

```bash
dbus-send --type=method_call --dest=io.crow_translate.CrowTranslate /io/crow_translate/CrowTranslate/MainWindow io.crow_translate.CrowTranslate.MainWindow.open
```

или с помощью `qdbus`:

```bash
qdbus io.crow_translate.CrowTranslate /io/crow_translate/CrowTranslate/MainWindow io.crow_translate.CrowTranslate.MainWindow.open
# или более короткая запись
qdbus io.crow_translate.CrowTranslate /io/crow_translate/CrowTranslate/MainWindow open
```
