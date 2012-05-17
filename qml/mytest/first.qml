// import QtQuick 1.0 // to target S60 5th Edition or Maemo 5
import QtQuick 1.1
import com.nokia.symbian 1.1
//import com.nokia.meego 1.0

Page{
   id: firstPage;



Rectangle{
    width: parent.width;
    height: parent.height;
    color:"red"

    MouseArea{
        anchors.fill: parent
        onClicked: console.log("red clicked")
    }

Rectangle{
    width:100
    height:50
    color: "green"
    anchors.centerIn: parent
    Text {
        text:"Srikanth"
    }
    MouseArea{
        anchors.fill:parent
        onClicked:pageStack.push(Qt.resolvedUrl("second.qml"))
    }
}

}

}

