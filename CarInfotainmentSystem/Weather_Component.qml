import QtQuick 2.0

Rectangle{
    id:weatherMain
    height: parent.height/2.2
    width: parent.width/1.7
    radius: 5
    anchors.right: parent.right
    anchors.bottom: parent.bottom
    color: "#302f2f"
    Text {
        id: t_weather
        text: "Weather"
        font.pixelSize:parent.height<parent.width?parent.height/12:parent.width/10;
        color : "white"
        font.bold: true
        anchors.left: parent.left
        anchors.leftMargin: parent.width/20
        anchors.top: parent.top
        anchors.topMargin: parent.height/20
    }
    Grid{
        id:grid1
        columns: 3
        rows: 2
        height: parent.height/4
        width: parent.width
        columnSpacing: weatherMain.width/5.5
        //        rowSpacing: weatherMain.height/3
        anchors.top: t_weather.bottom
        anchors.topMargin: parent.height/10
        anchors.horizontalCenter: parent.horizontalCenter
        Column{
            id:column_1
            spacing: 15
            width: parent.width/5
            Image {
                id: sunnyImage
                height: weatherMain.height/5
                width: weatherMain.width/5
                fillMode: Image.PreserveAspectFit
                source: "qrc:/images/sunny.png"
            }
            Text{
                id:t_clouds
                text: "Clouds"
                font.pixelSize: parent.height<parent.width?parent.height/3.9:parent.width/4.5;
                color: "white"
                font.bold: true
                anchors.horizontalCenter: parent.horizontalCenter
            }
            Text {
                id: text_1
                text: "weather"
                color: "grey"
                font.pixelSize:parent.height<parent.width?parent.height/6:parent.width/5.6;
                anchors.horizontalCenter: parent.horizontalCenter
            }
            Text{
                id:text_2
                text: "5.1"
                font.pixelSize: parent.height<parent.width?parent.height/3.9:parent.width/4.5
                color: "white"
                font.bold: true
                anchors.horizontalCenter: parent.horizontalCenter
                Text{
                    id:text_3
                    text: "km/h"
                    font.pixelSize: parent.height<parent.width?parent.height/2.5:parent.width/6
                    color: "white"
                    font.bold: true
                    anchors.left: parent.right
                    anchors.leftMargin: parent.width/5
                    anchors.bottom: parent.bottom
                    anchors.bottomMargin: parent.height/10
                }
            }
            Text {
                id: text_4
                text: "wind"
                color: "grey"
                font.pixelSize:parent.height<parent.width?parent.height/6:parent.width/5.6;
                anchors.horizontalCenter: parent.horizontalCenter
            }
        }
        Column{
            id:col_1
            spacing: 15
            Image {
                id: temparatureImage
                height: weatherMain.height/5
                width: weatherMain.width/5
                fillMode: Image.PreserveAspectFit
                source: "qrc:/images/temperature.png"
            }
            Row{
                anchors.horizontalCenter: parent.horizontalCenter
                Text{
                    id:text_5
                    text: "22"
                    font.pixelSize: col_1.height<col_1.width?col_1.height/3.9:col_1.width/4.5
                    color: "white"
                    font.bold: true
                }Text{
                    id:text_6
                    text: "o"
                    font.pixelSize: col_1.height<col_1.width?col_1.height/6:col_1.width/7
                    color: "white"
                    font.bold: true
                }Text{
                    id:text_7
                    text: "C"
                    font.pixelSize: col_1.height<col_1.width?col_1.height/3.9:col_1.width/4.5
                    color: "white"
                    font.bold: true
                }
            }
            Text {
                id: t_insideCar
                text: "inside car"
                color: "grey"
                font.pixelSize:parent.height<parent.width?parent.height/6:parent.width/5.6;
                anchors.horizontalCenter: parent.horizontalCenter
            }
            Row{
                anchors.horizontalCenter: parent.horizontalCenter
                Text{
                    id:text_8
                    text: "15.5"
                    font.pixelSize: col_1.height<col_1.width?col_1.height/3.9:col_1.width/4.5
                    color: "white"
                    font.bold: true
                }Text{
                    id:text_9
                    text: "o"
                    font.pixelSize: col_1.height<col_1.width?col_1.height/6:col_1.width/7
                    color: "white"
                    font.bold: true
                }Text{
                    id:text_10
                    text: "C"
                    font.pixelSize: col_1.height<col_1.width?col_1.height/3.9:col_1.width/4.5
                    color: "white"
                    font.bold: true
                }
            }
            Text {
                id: t_outside
                text: "outside"
                color: "grey"
                font.pixelSize:parent.height<parent.width?parent.height/6:parent.width/5.6;
                anchors.horizontalCenter: parent.horizontalCenter
            }
        }
        Column{
            id:col_2
            spacing: 15
            width: parent.width/5
            Image {
                id: rainImage
                height: weatherMain.height/5
                width: weatherMain.width/5
                fillMode: Image.PreserveAspectFit
                source: "qrc:/images/rain.png"
            }
            Text{
                id:text_11
                text: "93%"
                font.pixelSize: parent.height<parent.width?parent.height/3.9:parent.width/4.5
                color: "white"
                anchors.horizontalCenter: parent.horizontalCenter
                font.bold: true
            }
            Text {
                id: t_humidity
                text: "humidity"
                color: "grey"
                font.pixelSize:parent.height<parent.width?parent.height/6:parent.width/5.6;
                anchors.horizontalCenter: parent.horizontalCenter
            }
            Text{
                id:text_12
                text: "1015"
                font.pixelSize: parent.height<parent.width?parent.height/3.9:parent.width/4.5
                color: "white"
                anchors.horizontalCenter: parent.horizontalCenter
                font.bold: true
                Text{
                    id:text_13
                    text: "hPa"
                    font.pixelSize: parent.height<parent.width?parent.height/2.5:parent.width/6
                    color: "white"
                    font.bold: true
                    anchors.left: parent.right
                    anchors.leftMargin: parent.width/6
                    anchors.bottom: parent.bottom
                    anchors.bottomMargin: parent.height/10
                }
            }
            Text {
                id: text_14
                text: "pressure"
                color: "grey"
                font.pixelSize:parent.height<parent.width?parent.height/6:parent.width/5.6;
                anchors.horizontalCenter: parent.horizontalCenter

            }
        }
    }
}
