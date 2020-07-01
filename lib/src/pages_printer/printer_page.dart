import 'package:flutter/material.dart';
import 'package:colibri_app/src/model/producto_model.dart';

class PrinterPage1 extends StatefulWidget {

  @override
  _PrinterPage1State createState() => _PrinterPage1State();
}

class _PrinterPage1State extends State<PrinterPage1> {


  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      appBar: AppBar(
        title: Text(""),
      ),

      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(15.0),
          child: Column(
            children: <Widget>[
              _bannerSuperior(),

            ],
          ),
        ),
      ),
    );
  }

  Widget _bannerSuperior(){

    final size = MediaQuery.of(context).size;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Center(
          child: Container(
            width: size.width*0.35,
            child: Image(image: AssetImage("assets/iot_printer.png"),),
          ),
        ),

        Center(child: Text("Colibri 3D IOT v1.0",style: TextStyle(fontSize: 20.0),)),
        SizedBox( height: 5 ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Status:  Conectada  "),  
            Icon(Icons.adjust,color: Colors.green,)
          ],
        ),
        Divider(),
        Column(
          crossAxisAlignment : CrossAxisAlignment.start,
          children: <Widget>[
            Text("Archivo Seleccionado: --------"),
            Divider(),
            Text("Temperatura:  190.0º"),
            Divider(),
            Text("Tiempo restante: --:--hrs"),
          ],
        ),
      ],
    );

  }


}class PrinterPage2 extends StatefulWidget {

  @override
  _PrinterPage2State createState() => _PrinterPage2State();
}

class _PrinterPage2State extends State<PrinterPage2> {


  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      appBar: AppBar(
        title: Text(""),
      ),

      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(15.0),
          child: Column(
            children: <Widget>[
              _bannerSuperior(),

            ],
          ),
        ),
      ),
    );
  }

  Widget _bannerSuperior(){

    final size = MediaQuery.of(context).size;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Center(
          child: Container(
            width: size.width*0.35,
            child: Image(image: AssetImage("assets/iot_printer.png"),),
          ),
        ),

        Center(child: Text("Colibri 3D IOT v2.0",style: TextStyle(fontSize: 20.0),)),
        SizedBox( height: 5 ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Status:  Pausa  "),  
            Icon(Icons.adjust,color: Colors.amber,)
          ],
        ),
        Divider(),
        Column(
          crossAxisAlignment : CrossAxisAlignment.start,
          children: <Widget>[
            Text("Archivo Seleccionado: trofeo.gcode"),
            Divider(),
            Text("Temperatura:  209.5º"),
            Divider(),
            Text("Tiempo restante: --:--hrs"),
            Divider(),
          ],
        ),
      ],
    );

  }


}

class PrinterPage3 extends StatefulWidget {

  @override
  _PrinterPage3State createState() => _PrinterPage3State();
}

class _PrinterPage3State extends State<PrinterPage3> {


  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      appBar: AppBar(
        title: Text(""),
      ),

      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(15.0),
          child: Column(
            children: <Widget>[
              _bannerSuperior(),

            ],
          ),
        ),
      ),
    );
  }

  Widget _bannerSuperior(){

    final size = MediaQuery.of(context).size;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Center(
          child: Container(
            width: size.width*0.35,
            child: Image(image: AssetImage("assets/superPRO_printer.png"),),
          ),
        ),

        Center(child: Text("Colibri SuperPRO 3D",style: TextStyle(fontSize: 20.0),)),
        SizedBox( height: 5 ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Status:  imprimiendo..."),  
            Icon(Icons.adjust,color: Colors.blueAccent,)
          ],
        ),
        Divider(),
        Column(
          crossAxisAlignment : CrossAxisAlignment.start,
          children: <Widget>[
            Text("Archivo Seleccionado: alfil.gcode"),
            Divider(),
            Text("Temperatura:  230.8º"),
            Divider(),
            Text("Tiempo restante: 3:52hrs"),
          ],
        ),
      ],
    );

  }


}