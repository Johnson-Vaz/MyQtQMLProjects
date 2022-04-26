import QtQuick 2.0
import QtQuick.Controls 1.4
import QtQuick.Controls.Styles 1.4
Rectangle{
    id:journeyMain
    height: parent.height/1.9
    width: parent.width/1
    radius: 5
    anchors.right: parent.right
    color: "#302f2f"
    Text {
        id: t_journey
        text: "Journey"
        font.pixelSize:parent.height<parent.width?parent.height/12:parent.width/10;
        color : "white"
        font.bold: true
        anchors.left: parent.left
        anchors.leftMargin: parent.width/20
        anchors.top: parent.top
        anchors.topMargin: parent.height/20
    }
    Text {
        text: "Tesla Model S"
        font.pixelSize: parent.height<parent.width?parent.height/18:parent.width/15
        color: "#666060"
        anchors.left: parent.left
        anchors.leftMargin: parent.width/6
        anchors.top: t_journey.bottom
        anchors.topMargin: t_journey.height/10
    }
    Row{
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.left: journeyMain.left
        Image {
            fillMode: Image.PreserveAspectFit
            width: journeyMain.width/1.5
            height:journeyMain.height/1.1
            source: "qrc:/images/car.png"
        }
    }
    Column
    {
        anchors.right: journeyMain.right
        anchors.rightMargin: journeyMain.width/8
        anchors.top: journeyMain.top
        anchors.topMargin: journeyMain.height/5
        Rectangle {
            id:speedmeter_Main
            width: journeyMain.width/6
            height: width
            radius: width/2
            color: "#1f1f3d"
            rotation: 290
            anchors.rightMargin: journeyMain.width/7
            anchors.topMargin: journeyMain.height/6
            gradient: Gradient{
                GradientStop{
                    position: 0.2
                    color: "#666060"
                }
                GradientStop{
                    position: 0.2
                    color: "#8eb3ff"
                }
            }

            Rectangle {
                id:speedmeter_rect
                width: journeyMain.width/6
                height: width
                radius: width/2
                color: "#292828"
                scale: 0.8
                border.width: 2
                border.color: "#1f1f3d"
                Column {
                    anchors.centerIn: speedmeter_rect
                    rotation: 70
                    Text {
                        id: text_1
                        text: "83"
                        font.bold: true
                        font.pixelSize:speedmeter_Main.width/3.5
                        color: "white"
                        anchors.horizontalCenter: parent.horizontalCenter
                    }
                    Text {
                        id: text_2
                        text: "km/h"
                        font.bold: true
                        font.pixelSize:speedmeter_Main.width/10
                        color: "white"
                        anchors.horizontalCenter: parent.horizontalCenter
                    }
                    Text {
                        id: text_3
                        text: "P R N D"
                        font.bold: true
                        font.pixelSize:speedmeter_Main.width/12
                        color: "white"
                        anchors.horizontalCenter: parent.horizontalCenter
                    }
                }
            }
        }
    }

    Row{
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.bottom: journeyMain.bottom
        anchors.bottomMargin: journeyMain.height/8
        height: journeyMain.height/8
//        width: journeyMain.width
        Rectangle{
            id:left_rect
            width:journeyMain.width/25
            height:width
            radius:journeyMain.width
            color: "sky blue"
            anchors.verticalCenter: parent.verticalCenter

            Image{
                source: "qrc:/images/wheel2.png"
                fillMode: Image.PreserveAspectFit
                width:left_rect.width/2
                height:left_rect.height/2
                anchors.centerIn: parent
            }
        }
        Slider {
            value: 0.5
            width: journeyMain.width/1.10
//            height: journeyMain.height/8.5
            anchors.verticalCenter: parent.verticalCenter

        }
        Rectangle{
            id:right_rect
            width:journeyMain.width/25
            height:width
            radius:journeyMain.width
            color: "sky blue"
            anchors.verticalCenter: parent.verticalCenter

            Image{
                source: "qrc:/images/flag.png"
                fillMode: Image.PreserveAspectFit
                width:right_rect.width/2
                height:right_rect.height/2
                anchors.centerIn: parent
            }
        }
    }
    Row{
        anchors.horizontalCenter: parent.horizontalCenter
        spacing:parent.width/3.2
        anchors.bottom: journeyMain.bottom
        Column{
            Text {
                text: "Zagreb"
                font.pixelSize: journeyMain.width/40
                color: "white"
                anchors.horizontalCenter: parent.horizontalCenter
            }
            Text {
                text: "0 km"
                font.pixelSize: journeyMain.width/50
                color: "#666060"
                anchors.horizontalCenter: parent.horizontalCenter
            }
        }
        Column{
            Text {
                text: "Honningsvag"
                font.pixelSize: journeyMain.width/40
                color: "white"
                anchors.horizontalCenter: parent.horizontalCenter

            }
            Text {
                text: "5708 km"
                font.pixelSize: journeyMain.width/50
                color: "#666060"
                anchors.horizontalCenter: parent.horizontalCenter

            }
        }
        Column{
            Text {
                text: "Zagreb"
                font.pixelSize: journeyMain.width/40
                color: "white"
                anchors.horizontalCenter: parent.horizontalCenter

            }
            Text {
                text: "10375 Km"
                font.pixelSize: journeyMain.width/50
                color: "#666060"
                anchors.horizontalCenter: parent.horizontalCenter

            }
        }
    }
}


