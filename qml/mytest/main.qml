// import QtQuick 1.0 // to target S60 5th Edition or Maemo 5
import QtQuick 1.1
import com.nokia.symbian 1.1
//import com.nokia.meego 1.0

PageStackWindow {
    id: mainWindow;
    StatusBar{
        id: statusbar
        anchors.top:parent.top

    }
    Item {
             id: content
             anchors { top: statusbar.bottom; left: parent.left; right: parent.right; bottom: parent.bottom }
         }
    //showStatusBar: true

    function loadFirstPage() {
        pageStack.push("qrc:/qml/mytest/first.qml");
    }
//    function loadSecondPage() {
//        pageStack.push("qrc:/qml/mytest/second.qml")
//    }

    Component.onCompleted: {
        // load starting page
        loadFirstPage();
       // loadSecondPage();
    }
}
