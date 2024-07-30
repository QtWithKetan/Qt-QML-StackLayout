import QtQuick
import QtQuick.Layouts
import QtQuick.Controls

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    StackLayout
    {
        id: myStackLLayout
        anchors.fill: parent
        currentIndex: 1

        Rectangle
        {
            id:myRect_1
            Layout.fillHeight: true
            Layout.fillWidth: true
            color: "#FF0000"
            Label
            {
                text: "This Is First Page"
                anchors.centerIn: parent
                font.pointSize: 20
                color: "#FFFFFF"
            }
        }

        Rectangle
        {
            id:myRect_2
            Layout.fillHeight: true
            Layout.fillWidth: true
            color: "#00FF00"
            Label
            {
                text: "This Is Second Page"
                anchors.centerIn: parent
                font.pointSize: 20
                color: "#FFFFFF"
            }
        }

        Rectangle
        {
            id:myRect_3
            Layout.fillHeight: true
            Layout.fillWidth: true
            color: "#0000FF"
            Label
            {
                text: "This Is Thired Page"
                anchors.centerIn: parent
                font.pointSize: 20
                color: "#FFFFFF"
            }
        }
    }

    RowLayout
    {
        spacing: 10
        anchors.bottom:parent.bottom
        anchors.horizontalCenter: parent.horizontalCenter

        Button
        {
            id:myButton_1
            text: "First"
            onClicked:
            {
                myStackLLayout.currentIndex = 0
            }
        }

        Button
        {
            id:myButton_2
            text: "Second"
            onClicked:
            {
                myStackLLayout.currentIndex = 1
            }
        }

        Button
        {
            id:myButton_3
            text: "Thired"
            onClicked:
            {
                myStackLLayout.currentIndex = 2
            }
        }
    }
}
