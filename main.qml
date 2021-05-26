import QtQuick 2.5
import QtQuick.Window 2.2
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.1
import QtQuick.Controls 1.4
import QtGraphicalEffects 1.0


ApplicationWindow {
    id: applicationWindow
    title: qsTr("Hello World") + qmlTranslator.emptyString
    visible: true
    width: 640
    height: 480

    Label {
        id: helloLabel
        height: 50
        text: qsTr("Hello World") + qmlTranslator.emptyString
        anchors {
            top: parent.top
            left: parent.left
            right: parent.horizontalCenter
            margins: 10
        }
    }

    ComboBox {
        id: comboBox
        anchors {
            top: parent.top
            left: parent.horizontalCenter
            right: parent.right
            margins: 10
        }

        model: ["ru_RU", "en_US", "ua_UA"]

        // При изменении текста, инициализируем установку перевода через С++ слой
        onCurrentTextChanged: {
            qmlTranslator.setTranslation(comboBox.currentText)
        }
    }

    Row {
        spacing: 5
        anchors.bottom: parent.bottom

        Rectangle {
            id: butUa
            color: "transparent"
            border.color: "red"
            height: 50
            width: 100
            Text {
               id: t2
               text: qsTr("RU") + qmlTranslator.emptyString
               anchors.centerIn: butUa
            }


            MouseArea {
                anchors.fill: butUa
                onClicked: {
                    qmlTranslator.setTranslation("ru_RU");
                }
            }
        }

        Button {
            text: qsTr("UA") + qmlTranslator.emptyString
            onClicked: {
                qmlTranslator.setTranslation("ua_UA");
            }
        }

        Button {
            text: qsTr("EN") + qmlTranslator.emptyString
            onClicked: {
                qmlTranslator.setTranslation("en_US");
            }
        }
    }

    Label {
        id: labelText
        wrapMode: Text.Wrap
        text: qsTr("The QTranslator class provides internationalization" +
              "support for text output.An object of this class contains " +
              "a set of translations from a source language to a target language. " +
              "QTranslator provides functions to look up translations in a translation file. " +
              "Translation files are created using Qt Linguist.") + qmlTranslator.emptyString

        anchors {
            top: helloLabel.bottom
            left: parent.left
            right: parent.right
            margins: 10
        }
    }

    Loader {
        source:"Page1.qml";
      }

    Page1 {
        id: page1
    }

    Page2 {
        id: page2
    }

}
