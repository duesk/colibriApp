import 'package:colibri_app/src/Widgets/Filament.dart';
import 'package:colibri_app/src/Widgets/card_3d_printer.dart' as widgets;


import 'package:flutter/material.dart';

 

class HomePage extends StatelessWidget {

  Color colorApp = Colors.blue[600];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Colibri 3D"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.person),
            onPressed: (){
              Navigator.pushNamed(context, "login");
            }
          ),
        ],
      ),
      body:ListView(
        padding: EdgeInsets.all(10.0),
        children: <Widget>[
          //Materiales//////////////////////////////////////////////////////////
          _textTitle("Impresoras:"),
          SizedBox(height: 10.0,),
          widgets.cardPrinterConected(),
          widgets.cardPrinterConected2(),
          widgets.cardPrinterConected3(),
          SizedBox(height: 10.0,),
          FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: (){}
          ),
          SizedBox(height: 10.0,),


          //Materiales//////////////////////////////////////////////////////////
          Divider(),
          _textTitle("Materiales:"),
          SizedBox(height: 10,),
          pla(),
          abs(),
          nylon(),
          petg(),
          hips(),




          ],
        ),
      );
  }



  Widget _textTitle(String titulo){
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5, horizontal: 0.0),
      child: Text(titulo, style: TextStyle(fontSize: 20.0),),
    );
  }

}



  /*
    return Scaffold(
        appBar: AppBar(
          title: Text("Home Page"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            //crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text('Email: ${bloc.email}'),
              Text("Password: ${bloc.password}")
            ],
          ),
        ),
      );
  }
}
*/