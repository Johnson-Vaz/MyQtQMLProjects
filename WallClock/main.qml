import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.5
Window {
    id: clock
    width: 800
    height: 600
    visible: true
    title: qsTr("Hello World")
    color: "teal"
    property int hours
    property int minutes
    property int seconds
    property var starttime

    function updateCurrentTime() {
        var CurrentDateTime = new Date();
        hours = CurrentDateTime.getHours();
        minutes = CurrentDateTime.getMinutes();
        seconds = CurrentDateTime.getSeconds();
    }
    function startClock(){
        b1.enabled = true
        b2.enabled = true
        b3.enabled = true
    }

    Rectangle{
        id:_mainRec
        height: 500
        width: 500
        anchors.centerIn: parent
        gradient: Gradient {
                 GradientStop { position: 0.0; color: "light blue" }
                 GradientStop { position: 0.8; color: "blue" }
             }
        radius: 250

        Timer{
            id:_timer
            repeat: true
            interval: 1000
            running: true
            onTriggered: updateCurrentTime()
        }

        Image {
            id: _numbersImg
            height: parent.height
            width: parent.width
            source: "qrc:/clocknum.png"
        }
        Image {
            id: hourHand
             x: 240;
             y: 100
            width: 5
            height: 150
            source: "qrc:/hour.png"
            transform: Rotation {
                id: hourRotation
                angle: (clock.hours * 30) + (clock.minutes * 0.5)
                origin.x: 5
                origin.y: 150
                Behavior on angle {
                    id:b1
                    enabled: false
                    SpringAnimation {
                        spring: 2
                        damping: 0.2
                        modulus: 360
                    }
                }
            }
        }
        Image {
            id: minuteHand
            source: "qrc:/minute.png"
            x: 248;
            y: 85
            width: 3
            height: 180
            transform: Rotation {
                id: minuteRotation
                angle: clock.minutes * 6
                origin.x: 5
                origin.y: 165
                Behavior on angle {
                    id:b2
                    enabled: false
                    SpringAnimation {
                        spring: 2
                        damping: 0.2
                        modulus: 360
                    }
                }
            }
        }
        Image {
            id: secondHand
            source: "qrc:/second.png"
            x: 245; y: 53
            width: 5
            height: 200
            transform: Rotation {
                id: secondRotation
                angle: clock.seconds * 6
                origin.x: 5
                origin.y: 200
                Behavior on angle {
                    id:b3
                    enabled: false
                    SpringAnimation {
                        spring: 3
                        damping: 0.5
                        modulus: 360
                    }
                }
            }
        }
        Rectangle{
            id:_centerPoint
            height: 30
            width: 30
            radius: 20
            color: "blue"
            anchors.centerIn: parent
        }
    }
    Component.onCompleted: {
         updateCurrentTime()
         startClock()
    }
}
