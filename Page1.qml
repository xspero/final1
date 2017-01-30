import QtQuick 2.7
import QtGraphicalEffects 1.0
import QtQuick.Dialogs 1.2

Page1Form {
    width: 800
    height: 480

    //serialito.iniciarSerial();


    botonarriba.onClicked: {
        serialito.enviarcortina(1,255);

}
    botonabajo.onClicked: {
        serialito.enviarcortina(1,0);

    }
    switchDelegate1.onClicked: {
        if(switchDelegate1.checked)
        {serialito.enviarfoco(2,255);}
        else
        {serialito.enviarfoco(2,0);}

}
    switchDelegate.onClicked: {

        if(switchDelegate.checked)
        {serialito.enviarfoco(1,255);}
        else
        {serialito.enviarfoco(1,0);}
}



    areaselectRGB.onClicked: {

        colorDialog.open();
}

    switchapagar.onClicked: {
        if(switchapagar.checked)
        {//console.log("checked");
        }
        else
        {//console.log("no checked");
            colorseleccionado.color = "#000000"
            serialito.enviarRGB("#000000");
        }
}



    botoncambiarRGB.onClicked: {
        switchapagar.checked= true;
        serialito.enviarRGB(colorseleccionado.color);

}


    button1.onClicked: {
        serialito.test();
}




    colorDialog.onAccepted: {


        //textoRGB.text= colorDialog.color;

        //console.log("el color seleccionado es: " + textoRGB.text); //#ff00ff
        //serialito.enviarRGB(colorDialog.color);


    }






    radioButton3.onClicked: {
        serialito.iniciarSerial();

}
    progressBar.onValueChanged: {




        //serialito.enviardimmer(dial.position*100);

}
    dial.onPositionChanged: {
        porcentaje.text=((dial.position*100).toFixed(0));




        //console.log(dial.position);


}


    dial.onValueChanged: {
        serialito.enviardimmer(dial.value*100);




        //console.log(dial.position);


}




    porcentaje.onTextChanged: {



        //onTextChanged: serialito.test()


      //console.log(dial.value);

}










    //serialito.test:

    Component.onCompleted: {
        //serialito.test();
        console.log("se inicio correctamente ");
        //serialito.iniciarSerial();
    }
}
