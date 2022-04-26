import QtQuick 2.0
import QtGraphicalEffects 1.15

Rectangle{
    id:overViewMain
    height: parent.height
    width: parent.width/4.9
    radius: 5
    color: "#302f2f"
    Column{
        anchors.fill: parent
        Rectangle{
            id:overView
            height: parent.height/3
            width: parent.width/1
            radius: 5
            color: "#242121"
            Column{
                spacing: overView.width/20
                anchors.top: parent.top
                anchors.topMargin: 30
                anchors.horizontalCenter: parent.horizontalCenter
                Image {
                    id: img_speed
                    height: overView.height/2.2
                    width: overView.width/2.2
                    fillMode: Image.PreserveAspectFit
                    source: "qrc:/images/speed.png"
                    anchors.horizontalCenter: parent.horizontalCenter
                }
                Text {
                    id: txt_overview
                    text: "Overview"
                    font.pixelSize: overView.height<overView.width?overView.height/12:overView.width/16;
                    color: "white"
                    font.bold: true
                    anchors.horizontalCenter: parent.horizontalCenter
                }
                Rectangle{
                    color: "sky blue"
                    height: parent.height/30;width: parent.width/2.5
                    radius: 10
                    anchors.horizontalCenter: parent.horizontalCenter
                }
            }
        }
        Rectangle{
            id:batteryRect
            height: parent.height/3
            width: parent.width/1
            radius: 5
            color: "#302f2f"
            Column{
                spacing: batteryRect.width/20
                anchors.top: batteryRect.top
                anchors.topMargin: 30
                anchors.horizontalCenter: parent.horizontalCenter
                Image {
                    id: batteryImage
                    height: batteryRect.height/2.2
                    width: batteryRect.width/2.2
                    fillMode: Image.PreserveAspectFit
                    source: "qrc:/images/battery.png"
                    anchors.horizontalCenter: parent.horizontalCenter
                }
                Text {
                    id: txt_battery
                    text: "Battery"
                    font.pixelSize: batteryRect.height<batteryRect.width?batteryRect.height/12:batteryRect.width/16;
                    color: "white"
                    font.bold: true
                    anchors.horizontalCenter: parent.horizontalCenter
                }
                Rectangle{
                    color: "grey"
                    height: parent.height/30;width: parent.width/2.5
                    radius: 10
                    anchors.horizontalCenter: parent.horizontalCenter
                }
            }
        }Rectangle{
            id:mapRect
            height: parent.height/3
            width: parent.width/1
            radius: 5
            color: "#302f2f"
            Column{
                spacing: mapRect.width/20
                anchors.top: mapRect.top
                anchors.topMargin: 30
                anchors.horizontalCenter: parent.horizontalCenter
                Image {
                    id: gpsImage
                    height: mapRect.height/2.2
                    width: mapRect.width/2.2
                    fillMode: Image.PreserveAspectFit
                    source: "qrc:/images/gps.png"
                    anchors.horizontalCenter: parent.horizontalCenter
                }
                Text {
                    id: mapText
                    text: "Map"
                    font.pixelSize: mapRect.height<mapRect.width?mapRect.height/12:mapRect.width/16;
                    color: "white"
                    font.bold: true
                    anchors.horizontalCenter: parent.horizontalCenter
                }
                Rectangle{
                    color: "grey"
                    height: parent.height/30;width: parent.width/2.5
                    radius: 10
                    anchors.horizontalCenter: parent.horizontalCenter
                }
            }
        }
    }
}
