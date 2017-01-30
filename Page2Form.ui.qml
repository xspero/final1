import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.0

Item {
    width: 800
    property alias bapagar: bapagar
    property alias botclases: botclases
    property alias bproyeccion: bproyeccion
    property alias comboBox: comboBox
    z: -1



    ComboBox {
        id: comboBox
        x: 581
        y: 23
        width: 200
        height: 51
        z: 2
        model: [ "Personalizado", "Proyección", "Clases", "Apagado" ]
        currentIndex: 3

    }

    Button {
        id: botclases
        x: 52
        y: 141
        width: 177
        height: 198
        background: Rectangle {
            width: 177
            height: 198
            implicitWidth: 100
            implicitHeight: 40
            color: botclases.down ? "#e6a427" : "#ffaa00"
            border.color: "#26282a"
            border.width: 1
            radius: 4
        }

        Image {
            id: imgclases
            x: 31
            y: 25
            width: 100
            height: 100
            source: "res/44224-200.png"

            Text {
                id: textclases
                x: 10
                y: 122
                width: 103
                height: 37
                text: qsTr("Clases")
                font.bold: true
                font.family: "Courier"
                font.pixelSize: 25
            }
        }


    }

    Button {
        id: bapagar
        x: 552
        y: 138
        width: 177
        height: 198
        background: Rectangle {
            width: 177
            height: 198
            implicitWidth: 100
            implicitHeight: 40
            color: bapagar.down ? "#55aa00" : "#69c70a"
            border.color: "#26282a"
            border.width: 1
            radius: 4
        }

        Image {
            id: imgapagar
            x: 42
            y: 22
            width: 100
            height: 100
            source: "res/offmaterial.png"

            Text {
                id: textapagar
                x: 0
                y: 107
                width: 103
                height: 37
                text: qsTr("Apagar")
                font.family: "Courier"
                font.pixelSize: 25
                font.bold: true
            }
        }


    }

    Button {
        id: bproyeccion
        x: 312
        y: 141
        width: 177
        height: 198
        background: Rectangle {
            x: 0
            y: 0
            width: 177
            height: 198
            color: bproyeccion.down ? "#aa0000" : "#af1010"
            radius: 4
            border.width: 1
            border.color: "#26282a"
            implicitHeight: 40
            implicitWidth: 100
        }

        Image {
            id: imgproyector
            x: 39
            y: 35
            width: 100
            height: 100
            source: "res/movie-projector-icon-63469.png"

            Text {
                id: textproyeccion
                x: -23
                y: 108
                width: 103
                height: 37
                text: qsTr("Proyección")
                font.family: "Courier"
                font.pixelSize: 25
                font.bold: true
            }
        }
    }

    Rectangle {
        id: fondogris
        x: 1
        y: 89
        width: 800
        height: 394
        color: "#493a63"
        z: -2
    }

}
