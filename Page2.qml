import QtQuick 2.5
import QtQuick.Window 2.2
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.1
import QtQuick.Controls 1.4
import QtGraphicalEffects 1.0

Page {
    id: page2
    Rectangle {
        x:200
        width: 100
        height: 200
        MouseArea {
            anchors.fill: parent
            onClicked: {
                Qt.quit();
            }
        }
        
        Text {
            text: qsTr("Hello World2")
            anchors.centerIn: parent
        }
    }
}
