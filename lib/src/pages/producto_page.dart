import 'package:flutter/material.dart';
import 'package:colibri_app/src/model/producto_model.dart';
import 'package:colibri_app/src/utils/utils.dart' as utils;

class ProductoPage extends StatefulWidget {

  @override
  _ProductoPageState createState() => _ProductoPageState();
}

class _ProductoPageState extends State<ProductoPage> {

  final formKey = GlobalKey<FormState>();

  ProductoModel producto = new ProductoModel();


  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      appBar: AppBar(
        title: Text("Producto"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.photo_size_select_actual ),
            onPressed: (){}
          ),
          IconButton(
            icon: Icon(Icons.camera_alt ),
            onPressed: (){}
          )
        ],
      ),

      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(15.0),
          child: Form(
            key: formKey,
            child: Column(
              children: <Widget>[
                _crearNombre(),
                _crearPrecio(),
                SizedBox(height: 15.0,),
                _crearBoton()
              ],
            ),
          ),
        ),
      ),
    );

  }

  Widget _crearNombre(){

    return TextFormField(
      initialValue: producto.titulo,
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
        labelText: "Producto"
      ),
      validator: (value){
        if(value.length < 3 ){
          return "Ingrese el nombre del producto";

        }else{
          return null;
        }
      },
    );
    
  }

  Widget _crearPrecio(){

    print("valor: ${producto.valor}");

    return TextFormField(
      initialValue: producto.valor.toString(),
      keyboardType: TextInputType.numberWithOptions(decimal: true),
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
        labelText: "Precio"
      ),
      validator: (value){
        if(utils.isNumeric(value)){
          return null;
        }else{
          return "Sólo números";
        }
      },
    );
  }

  Widget _crearBoton(){
    return RaisedButton.icon(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5.0)
      ),
      color:  Colors.teal[400],
      textColor: Colors.white,
      icon: Icon(Icons.save),
      label: Text("Guardar"),
      onPressed: _sumit,
    );
  }

  void _sumit(){

    if (!formKey.currentState.validate()) return;
    
    //Cuando el formulario es correcto /////////////
    print("ok");

  }
}