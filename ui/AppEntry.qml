import QtQuick.Layouts 1.4
import QtQuick 2.12
import QtQuick.Controls 2.12
import org.kde.kirigami 2.11 as Kirigami
import QtGraphicalEffects 1.0
import Mycroft 1.0 as Mycroft

ItemDelegate {
    id: appEntryDelegate
    property var metricHeight

    background: Rectangle {
        color: "#212121"
        anchors.fill: parent
        anchors.margins: Kirigami.Units.smallSpacing
        radius: 5
        border.width: 1
        border.color: "#a70f1b"
    }

    contentItem: Item {
        anchors.centerIn: parent

        ColumnLayout {
            anchors.fill: parent
            anchors.margins: Kirigami.Units.largeSpacing
            spacing: Mycroft.Units.gridUnit * 0.2

            Rectangle {
                Layout.preferredWidth: parent.height / 2
                Layout.preferredHeight: width
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                color: "#121212"
                radius: 200

                Image {
                    anchors.fill: parent
                    anchors.margins: Kirigami.Units.gridUnit * 0.25
                    source: model.thumbnail
                }
            }

            Label {
                Layout.preferredWidth: parent.width
                horizontalAlignment: Text.AlignHCenter
                color: "white"
                text: model.name
                font.bold: true
                font.capitalization: Font.Capitalize
                fontSizeMode: Text.Fit
                minimumPointSize: metricHeight
                font.pixelSize: 48
                elide: Text.ElideRight
            }
        }
    }

    onClicked: {
        appsBar.close()
        Mycroft.MycroftController.sendRequest(model.action, {})
    }
}
