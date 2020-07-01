
import 'package:flutter/material.dart';

  

Widget pla(){

  final String  material = "PLA";

  return CustomListItemTwo(
          material: material,
          title: 'PLA',
          tempRecomendada: "Temp: 180º a 220º",
          navigator: "PLA",
        );

}

Widget abs(){

  final String  material = "ABS";

  return CustomListItemTwo(
          material: material,
          title: 'ABS',
          tempRecomendada: "Temp: 180º a 220º",
          navigator: "ABS",
        );

}

Widget nylon(){

  final String  material = "NYLON";

  return CustomListItemTwo(          
          
          material: material,

          title: 'Nylon',
          tempRecomendada: "Temp: 180º a 220º",
          navigator: "Nylon",
        );

}

Widget petg(){

  final String  material = "PETG";

  return CustomListItemTwo(
          material: material,
          title: 'PETG',
          tempRecomendada: "Temp: 180º a 220º",
          navigator: "PETG",
        );

}

Widget hips(){

  final String  material = "HIPS";

  return CustomListItemTwo(
          material: material,
          title: 'HIPS',
          tempRecomendada: "Temp: 180º a 220º",
          navigator: "HIPS",
        );

}

class _ArticleDescription extends StatelessWidget {
  _ArticleDescription({
    Key key,
    this.title,
    this.tempRecomendada,
  }) : super(key: key);

  final String title;
  final String tempRecomendada;

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
                  '$tempRecomendada',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontSize: 12.0,
                    color: Colors.black54,
                  ),
                ),
                Row(
                  children: <Widget>[

                  ],
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
    this.material,
    this.title,
    this.tempRecomendada,
    this.navigator,
  }) : super(key: key);

  final String material;
  final String title;
  final String tempRecomendada;
  final String navigator;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, navigator),
      child: Card(
        child: ListTile(
          title: Text(title),
          subtitle: Text(tempRecomendada),
          trailing:filament(material),
        )
      )
    );
  }
}

  Widget filament(String material) {

    if(material == "PLA"){
      return Container(
        // margin: EdgeInsets.symmetric(vertical:20.0),
        height: 70.0,
        child: Image(image: AssetImage("assets/PLA.jpg"),),
      );
    }
    if(material == "ABS"){
      return Container(
        //margin: EdgeInsets.symmetric(vertical:20.0),
        height: 70.0,
        child: Image(image: AssetImage("assets/ABS.jpg"),),
      );
    }
    if(material == "NYLON"){
      return Container(
        //margin: EdgeInsets.symmetric(vertical:20.0),
        height: 70.0,
        child: Image(image: AssetImage("assets/NYLON.jpg"),),
      );
    }
    if(material == "HIPS"){
      return Container(
        //margin: EdgeInsets.symmetric(vertical:20.0),
        height: 70.0,
        child: Image(image: AssetImage("assets/HIPS.jpg"),),
      );
    }    
    if(material == "PETG"){
      return Container(
        //margin: EdgeInsets.symmetric(vertical:20.0),
        height: 70.0,
        child: Image(image: AssetImage("assets/PETG.jpg"),),
      );
    }

  }

