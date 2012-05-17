// import QtQuick 1.0 // to target S60 5th Edition or Maemo 5
import QtQuick 1.1
import com.nokia.symbian 1.1
//import com.nokia.meego 1.0
Page {
    id:secondpage

    Rectangle {
        width: 100
        height: 50
        color:"yellow"
        anchors.centerIn: parent

        Text{

            text:"GS"

        }
        MouseArea{
            anchors.fill: parent
            onClicked: console.log("gs clicked")
        }
    }
    ToolBar{
        anchors.bottom: parent.bottom
        tools: ToolBarLayout{
            ToolButton{
                iconSource: "toolbar-back"
                onClicked: pageStack.pop()
            }
            ToolButton{
                iconSource: "toolbar-dialer"
            }
            ToolButton{
                iconSource: "toolbar-menu"

            }
            ToolButton{
                iconSource: "toolbar-home"
            }
            ToolButton{
                iconSource: "toolbar-delete"

            }
            ToolButton{
                iconSource: "toolbar-previous"
            }
            ToolButton{
                iconSource: "toolbar-next"
            }
            ToolButton{
                iconSource: "toolbar-add"
            }
            ToolButton{
                iconSource: "toolbar-home"
            }

        }

    }
    TabBarLayout{
        TabButton{
            tab: tab1content;
            text:"tab1"
        }
        TabButton{
            tab: tab2content;
            text:"tab2"
        }
    }
}
