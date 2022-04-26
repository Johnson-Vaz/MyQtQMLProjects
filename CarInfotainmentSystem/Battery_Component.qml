import QtQuick 2.0

Rectangle{
    id:batteryMain
    height: parent.height/2.2
    width: parent.width/2.5
    radius: 5
    anchors.bottom: parent.bottom
    anchors.left: parent.left
    color: "#302f2f"
    Text {
        id: t_Battery
        text: "Battery"
        font.pixelSize:parent.height<parent.width?parent.height/12:parent.width/10;
        color : "white"
        font.bold: true
        anchors.left: parent.left
        anchors.leftMargin: parent.width/20
        anchors.top: parent.top
        anchors.topMargin: parent.height/20
    }
    Row{
        height: parent.height
        width: parent.width/4
        anchors.left: batteryMain.left
        anchors.leftMargin: batteryMain.width/10
        anchors.top: t_Battery.bottom
        anchors.topMargin: parent.height/10
        spacing: batteryMain.width/10
        Column{
            id:batteryColumn
            height: parent.height
            width: parent.width
            Rectangle{
                width:batteryMain.width/11
                height: batteryMain.height/20
                anchors.horizontalCenter: batteryColumn.horizontalCenter
                color:"#666060"
            }
            Rectangle {
                width:batteryMain.width/4
                height: batteryMain.height/2

                gradient: Gradient {
                    GradientStop { position: 0.6; color: "#8eb3ff" }
                    GradientStop { position: 0.6; color: "#666060" }
                }
            }
        }
        Column{
            spacing:batteryMain.height/90
            Text {
                text: "142 Km"
                font.pixelSize: parent.height<parent.width?parent.height/4.5:parent.width/7
                color: "white"
                font.bold: true
            }
            Text {
                text: "left"
                font.pixelSize: batteryMain.width/18
                color: "#666060"

            }
            Text {
                text: "22"
                font.pixelSize: parent.height<parent.width?parent.height/4.5:parent.width/7
                color: "white"
                font.bold: true
            }
            Text {
                text: "charge cycles"
                font.pixelSize: batteryMain.width/18
                color: "#666060"

            }
            Text {
                text: "4758 km"
                font.pixelSize: parent.height<parent.width?parent.height/4.5:parent.width/7
                color: "white"
                font.bold: true
            }
            Text {
                text: "distance travelled"
                font.pixelSize: batteryMain.width/18
                color: "#666060"

            }
        }
    }
}
