import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.0
import QtQuick.Controls.Material 2.0
import QtQuick.Dialogs 1.2

Item {
    width: 800
    property alias mouseArea1: mouseArea1
    property alias mouseArea: mouseArea
    property alias botonarriba: botonarriba
    property alias botonabajo: botonabajo
    property alias switchDelegate1: switchDelegate1
    property alias switchDelegate: switchDelegate
    property alias botoncambiarRGB: botoncambiarRGB
    property alias switchapagar: switchapagar
    property alias areaselectRGB: areaselectRGB
    property alias botonclases: botonclases
    property alias button1: button1
    property alias colorseleccionado: colorseleccionado
    property alias radioButton3: radioButton3
    property alias progressBar: progressBar
    property alias dial: dial
    property alias porcentaje: porcentaje
    property alias poercentaje: porcentaje
    property alias icondimmer: icondimmer
    property alias iconfoco: iconfoco
    property alias colorDialog: colorDialog
    z: -1









    RadioButton {
        id: radioButton3
        x: 644
        y: 24
        width: 110
        height: 49
        text: qsTr("iniciar")
    }



    Image {
        id: iconRGB
        x: 547
        y: 125
        width: 27
        height: 28

        Text {
            id: text4
            x: 48
            y: -4
            width: 110
            height: 37
            color: "#ffffff"
            text: qsTr("RGB")
            font.pixelSize: 30
            z: 2
        }

        Button {
            id: botoncambiarRGB
            x: 132
            y: 39
            text: qsTr("Cambiar")
            //onClicked: colorDialog.Open

            ColorDialog {
                id: colorDialog
                title: "Please choose a color"
                onAccepted: colorseleccionado.color = colorDialog.color
                //property string name: colorDialog.text


                //Component.onCompleted: visible = true

                //Component.onCompleted: visible = false
            }


        }

        Image {
            id: image
            x: -10
            y: 34
            width: 129
            height: 102
            source: "res/rgb select.png"

            MouseArea {
                id: mouseArea
                x: 12
                y: 13
                width: 21
                height: 21
                onClicked: colorseleccionado.color= "#ff0000"
            }

            MouseArea {
                id: mouseArea1
                x: 39
                y: 13
                width: 21
                height: 21
                onClicked: colorseleccionado.color= "#ff8000"
            }

            MouseArea {
                id: mouseArea2
                x: 66
                y: 13
                width: 21
                height: 21
                onClicked: colorseleccionado.color= "#ffff00"
            }

            MouseArea {
                id: mouseArea3
                x: 94
                y: 13
                width: 21
                height: 21
                onClicked: colorseleccionado.color= "#00ff00"
            }

            MouseArea {
                id: mouseArea4
                x: 12
                y: 42
                width: 21
                height: 21
                onClicked: colorseleccionado.color= "#03c0c6"
            }

            MouseArea {
                id: mouseArea5
                x: 39
                y: 42
                width: 21
                height: 21
                onClicked: colorseleccionado.color= "#0000ff"
            }

            MouseArea {
                id: mouseArea6
                x: 66
                y: 42
                width: 21
                height: 21
                onClicked: colorseleccionado.color= "#762ca7"
            }

            MouseArea {
                id: mouseArea7
                x: 94
                y: 42
                width: 21
                height: 21
                onClicked: colorseleccionado.color= "#ff98bf"
            }
        }

        Rectangle {
            id: rectangle
            x: 138
            y: -3
            width: 60
            height: 36
            color: "#444444"

            Rectangle {
                id: colorseleccionado
                x: 10
                y: 6
                width: 41
                height: 24
                color: colorDialog.color
            }

            MouseArea {
                id: areaselectRGB
                x: 0
                y: 0
                width: 60
                height: 36
                //onClicked: colorseleccionado.color = colorDialog.color

            }
        }

        SwitchDelegate {
            id: switchapagar
            x: 125
            y: 88
            width: 73
            height: 48
            topPadding: 8
            rightPadding: 7
        }

        source: "res/icon_rgb.png"
        z: 3
    }

    Image {
        id: iconfoco
        x: 282
        y: 135
        width: 21
        height: 27
        z: 2
        source: "res/foco.png"

        Text {
            id: text1
            x: 35
            y: -5
            width: 76
            height: 37
            color: "#ffffff"
            text: qsTr("Focos")
            z: 2
            font.pixelSize: 30
        }

        SwitchDelegate {
            id: switchDelegate
            x: -19
            y: 36
            text: qsTr("Foco 1")
            z: 3
        }

        SwitchDelegate {
            id: switchDelegate1
            x: -19
            y: 72
            text: qsTr("Foco 2")
            z: 3
        }
    }















    Image {
        id: icondimmer
        x: 518
        y: 310
        width: 25
        height: 25
        z: 3
        source: "res/icon_dimerc.png"

        Text {
            id: text3
            x: 33
            y: -7
            width: 110
            height: 37
            color: "#ffffff"
            text: qsTr("Dimmer")
            font.pixelSize: 30
            z: 2
        }

        ProgressBar {
            id: progressBar
            x: -8
            y: 51
            width: 168
            height: 4
            value: dial.position
        }

        Dial {
            id: dial
            x: 165
            y: -15
            //snapMode: Dial.SnapAlways

        }

        Text {
            id: text7
            x: 96
            y: 61
            width: 64
            height: 24
            color: "#ffffff"
            text: "%"
            font.pixelSize: 20
        }

        Text {
            id: porcentaje
            x: 26
            y: 61
            width: 64
            height: 24
            color: "#ffffff"
            //            text: progressBar.value*100
            font.family: "Verdana"
            font.pixelSize: 20


        }

    }



    Text {
        id: textoescenas
        x: 41
        y: 111
        width: 97
        height: 24
        color: "#ffaa00"
        text: qsTr("Personalizar ")
        z: 5
        font.pixelSize: 18

        RadioButton {
            id: botonclases
            x: 1
            y: 56
            width: 110
            height: 49
            text: qsTr("Clases")
        }

        RadioButton {
            id: botonproyeccion
            x: 1
            y: 105
            text: qsTr("Proyección")
        }

        RadioButton {
            id: botonapagartodo
            x: 0
            y: 151
            text: qsTr("Apagar Todo")
        }

        Text {
            id: text5
            x: 17
            y: 26
            width: 66
            height: 14
            color: "#ffaa00"
            text: qsTr("Escenas")
            renderType: Text.NativeRendering
            font.pixelSize: 18
        }

        Button {
            id: botonguardar
            x: 17
            y: 205
            text: qsTr("Guardar")
        }

        Button {
            id: botonguardar1
            x: 8
            y: 259
            text: qsTr("Establecer")
        }
    }




    Image {
        id: iconecram
        x: 262
        y: 275
        width: 27
        height: 22
        Text {
            id: text2
            x: 43
            y: -8
            width: 110
            height: 37
            color: "#ffffff"
            text: qsTr("Ecram")
            font.pixelSize: 30
            z: 2
        }

        RadioButton {
            id: botonarriba
            x: 43
            y: 56
            width: 95
            height: 29
            text: qsTr("Arriba  ↑")
        }

        RadioButton {
            id: botonabajo
            x: 44
            y: 91
            width: 94
            height: 32
            text: qsTr("Abajo  ↓")
        }
        source: "res/icon_cortina.png"
        z: 2
    }


    Rectangle {
        id: fondo
        x: 1
        y: 89
        width: 800
        height: 394
        color: "#191919"
        z: -2

        Rectangle {
            id: rectangle4
            x: 0
            y: 345
            width: 800
            height: 94
            color: "#303030"
            z: 1
        }
    }

    Button {
        id: button1
        x: 432
        y: 168
        text: qsTr("TEST")
    }







}
