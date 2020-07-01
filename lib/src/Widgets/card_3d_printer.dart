
import 'package:flutter/material.dart';

  

Widget cardPrinterConected(){

  final _iconColorG = Colors.green;
  int modelPrinter = 1;

  return CustomListItemTwo(
          thumbnail: printer(modelPrinter),
          title: 'Colibri 3D IOT v1.0',
          subtitle: 'Status: Conectada',
          author: '',
          publishDate: '',
          readDuration: '',
          iconColor: _iconColorG,
          navigator: "printer1",
          temp: "  190.0º"

        );

}

Widget cardPrinterConected2(){
  
  final _iconColor = Colors.amber;
  int modelPrinter = 1;



  return CustomListItemTwo(
          thumbnail: printer(modelPrinter),
          title: 'Colibri 3D IOT v2.0',
          subtitle: 'Status: Pausa',
          author: 'Archivo: trofeo.gcode',
          publishDate: 'Tiempo restante:',
          readDuration: ' --:-- hrs',
          iconColor: _iconColor,
          navigator: "printer2",
          temp: "  209.5º"

        );

}

Widget cardPrinterConected3(){

  final _colorIcon = Colors.blueAccent;
  int modelPrinter = 2;

  
  return CustomListItemTwo(
          thumbnail: printer(modelPrinter),
          title: 'Colibri SuperPRO 3D',
          subtitle: 'Status: Imprimiendo..',
          author: 'Archivo: alfil.gcode',
          publishDate: 'Tiempo restante: ',
          readDuration: '3:52 hrs',
          iconColor: _colorIcon,
          navigator: "printer3",
          temp: "  230.8º"
        );

}


class _ArticleDescription extends StatelessWidget {
  _ArticleDescription({
    Key key,
    this.title,
    this.subtitle,
    this.author,
    this.publishDate,
    this.readDuration,
    this.iconColor,
    this.navigator,
    this.temp,
  }) : super(key: key);

  final String title;
  final String subtitle;
  final String author;
  final String publishDate;
  final String readDuration;
  final Color iconColor;
  final String navigator; 
  final String temp;

  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            flex: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  '$title',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Padding(padding: EdgeInsets.only(bottom: 2.0)),
                Text(
                  '$subtitle',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontSize: 12.0,
                    color: Colors.black54,
                  ),
                ),
                Row(
                  children: <Widget>[
                    Icon(Icons.adjust, color: iconColor,),
                    Text("$temp")
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Text(
                  '$author',
                  style: const TextStyle(
                    fontSize: 12.0,
                    color: Colors.black87,
                  ),
                ),
                Text(
                  '$publishDate $readDuration',
                  style: const TextStyle(
                    fontSize: 12.0,
                    color: Colors.black54,
                  ),
                ),
              ],
            ),
          ),
        ],
    );
  }
}

class CustomListItemTwo extends StatelessWidget {

  CustomListItemTwo({
    Key key,
    this.thumbnail,
    this.title,
    this.subtitle,
    this.author,
    this.publishDate,
    this.readDuration,
    this.iconColor,
    this.navigator,
    this.temp,
  }) : super(key: key);

  final Widget thumbnail;
  final String title;
  final String subtitle;
  final String author;
  final String publishDate;
  final String readDuration;
  final Color  iconColor;
  final String navigator;
  final String temp;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, navigator),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0),
          child: SizedBox(
            height: 100,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                AspectRatio(
                  aspectRatio: 1.0,
                  child: thumbnail,
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20.0, 0.0, 2.0, 0.0),
                    child: _ArticleDescription(
                      title: title,
                      subtitle: subtitle,
                      author: author,
                      publishDate: publishDate,
                      readDuration: readDuration,
                      iconColor: iconColor,
                      temp: temp
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

  Widget printer(int modelPrinter) {

    if(modelPrinter == 1){
      return Container(
        margin: EdgeInsets.symmetric(vertical:20.0),
        height: 70.0,
        child: Image(image: AssetImage("assets/iot_printer.png"),),
      );
    }if(modelPrinter == 2){
      return Container(
        margin: EdgeInsets.symmetric(vertical:20.0),
        height: 70.0,
        child: Image(image: AssetImage("assets/superPRO_printer.png"),),
      );
    }

  }




  /*
      height: 150.0,
      margin: EdgeInsets.symmetric(horizontal: 15.0,),
      padding: EdgeInsets.all(15.0),

      child:Column(
        children: <Widget>[ 
          Row(
            children:<Widget>[
              Container(
                margin: EdgeInsets.symmetric(vertical:20.0),
                height: 70.0,
                child: Image(image: AssetImage("assets/iot_printer.png"),),
              ),
              Column(
                crossAxisAlignment: ,
                children:<Widget>[
                  Text("Colibri IOT V12.0", textAlign: TextAlign.left,),
                  LinearProgressIndicator( value:0.20)
                ]
              )
              
            ]
          ),
          //SizedBox(height: 10.0,),
        ],
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20.0),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black12,
            blurRadius: 3.0,
            offset: Offset(2.0,5.0),
            spreadRadius: 2.0
          )
        ]
      ),
    );
  }
*/