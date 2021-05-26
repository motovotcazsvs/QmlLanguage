TEMPLATE = app

QT += qml quick widgets

CONFIG += c++11

SOURCES += main.cpp \
    qmltranslator.cpp

# Для того, чтобы создать файл переводов со строками из ресурсов qml
# понадобится включить файл qml в качестве обычных исходников в pro файле
# но только для использования утилиты lupdate, чтобы она могла узнать,
# какие строки нуждаются в переводе
lupdate_only {
    SOURCES += \
        main.qml \
        Page2.qml \
        Page1.qml
}

RESOURCES += qml.qrc \
    translations.qrc \
    Page2.qml \
    Page1.qml

OTHER_FILES += \
    Page2.qml \
    Page1.qml

# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH =

# Default rules for deployment.
include(deployment.pri)

# Добавляем файл переводов,
# который является по сути файлом "исходных кодов" для нашего перевода
TRANSLATIONS += QmlLanguage_ru.ts \
                QmlLanguage_ua.ts

HEADERS += \
    qmltranslator.h

DISTFILES += \
    Page2.qml \
    Page1.qml



