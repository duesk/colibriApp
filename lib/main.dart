import 'package:colibri_app/src/pages/material/page_abs.dart';
import 'package:colibri_app/src/pages/material/page_hips.dart';
import 'package:colibri_app/src/pages/material/page_nylon.dart';
import 'package:colibri_app/src/pages/material/page_petg.dart';
import 'package:colibri_app/src/pages/material/page_pla.dart';
import 'package:colibri_app/src/pages_printer/printer_page.dart';
import 'package:flutter/material.dart';
import 'package:colibri_app/src/bloc/provider.dart';
import 'package:colibri_app/src/pages/home_page.dart';
import 'package:colibri_app/src/pages/login.dart';
import 'package:colibri_app/src/pages/producto_page.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Provider(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        initialRoute: "home",
        routes: {

          
          "login"   : (BuildContext context) => LoginPage(),
          "home"    : (BuildContext context) => HomePage(),
          "producto": (BuildContext context) => ProductoPage(),
          "printer1": (BuildContext context) => PrinterPage1(),
          "printer2": (BuildContext context) => PrinterPage2(),
          "printer3": (BuildContext context) => PrinterPage3(),


          ///////////////////////////PAGES MATERIAL////////////////////////////
          

          "PLA"     : (BuildContext context) => PagePLA(),
          "ABS"     : (BuildContext context) => PageABS(),
          "PETG"    : (BuildContext context) => PagePETG(),
          "HIPS"    : (BuildContext context) => PageHIPS(),
          "Nylon"   : (BuildContext context) => PageNylon(),


          /////////////////////////////////////////////////////////////////////
        },
        theme: ThemeData(
          primaryColor: Colors.blue[600]
        ),
      )
    );
  }
}