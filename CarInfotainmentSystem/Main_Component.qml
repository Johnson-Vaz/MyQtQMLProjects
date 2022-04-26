import QtQuick 2.0

Rectangle{
    id:mainRectangle
    anchors.centerIn: parent
    height: parent.height-35
    width: parent.width-35
    color: "#080808"
    radius: 5
    Overview_Component{
        id:overviewComponent
    }
    Rectangle{
        id:secondmainRectangle
        height: parent.height
        width: parent.width/1.3
        anchors.right: parent.right
        color: "#080808"
        Journey_Component{
            id:journeyComponent
        }
        Weather_Component{
            id:weatherComponent
        }
        Battery_Component{
            id:batteryComponent
        }
    }

}
