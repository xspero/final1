import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.0

Item {
    width: 800
    property alias button: button
    property alias switch4: switch4
    property alias comboBox: comboBox
    z: -1






    ComboBox {
        id: comboBox
        x: 672
        y: 23
    }

    Image {
        id: iconfoco1
        x: 481
        y: 339
        Text {
            id: text2
            x: 64
            y: 1
            width: 110
            height: 37
            color: "#ffffff"
            text: qsTr("Cámara")
            font.pixelSize: 30
            z: 2
        }

        Switch {
            id: switch3
            x: 180
            y: 1
            text: qsTr("Encender")
            antialiasing: false
        }
        source: "res/icon_camaraapa.png"
        z: 2
    }

    Switch {
        id: switch4
        x: 173
        y: 136
        text: qsTr("Encender")
        antialiasing: false
    }

    Text {
        id: text3
        x: 157
        y: 182
        width: 110
        height: 37
        color: "#ffffff"
        text: qsTr("Alarma")
        font.pixelSize: 30
        z: 2
    }

    Rectangle {
        id: rectangle1
        x: 1
        y: 89
        width: 800
        height: 394
        color: "#00557f"
        z: -2

        Button {
            id: button
            x: 218
            y: 279
            text: qsTr("Salir")
            z: 1
        }
    }

    Rectangle {
        id: rectangle2
        x: 477
        y: 334
        width: 49
        height: 46
        color: "#303030"
        z: -2

        Image {
            id: image
            x: -1
            y: -237
            width: 309
            height: 220
            source: "res/camara.png"
        }
    }

}
