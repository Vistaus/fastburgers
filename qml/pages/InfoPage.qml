import QtQuick 2.4
import QtQuick.Layouts 1.1
import Ubuntu.Components 1.3
import "../components"

Page {
    anchors.fill: parent
    id: page

    header: PageHeader {
        title: i18n.tr('Info about Fastburgers %1').arg(version)
    }


    ScrollView {
        id: scrollView
        width: parent.width
        height: parent.height - header.height
        anchors.top: header.bottom
        contentItem: Column {
            width: page.width

            Icon {
                id: coffeeImage
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.topMargin: parent.width / 4
                width: parent.width / 2
                height: width
                source: "../../assets/logo.png"
            }

            SettingsListItem {
                name: i18n.tr("Buy me a coffee")
                icon: "like"
                iconColor: UbuntuColors.red
                onClicked: Qt.openUrlExternally("https://www.patreon.com/collaproductions")
            }

            SettingsListItem {
                name: i18n.tr("Contributors")
                icon: "contact-group"
                onClicked: Qt.openUrlExternally("https://github.com/nicolascolla/fastburgers/graphs/contributors")
            }

            SettingsListItem {
                name: i18n.tr("Source code")
                icon: "text-xml-symbolic"
                onClicked: Qt.openUrlExternally("https://github.com/nicolascolla/fastburgers")
            }

            SettingsListItem {
                name: i18n.tr("License")
                icon: "x-office-document-symbolic"
                onClicked: Qt.openUrlExternally("https://github.com/nicolascolla/fastburgers/blob/master/LICENSE")
            }

        }
    }

}
