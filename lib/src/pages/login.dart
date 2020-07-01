import 'package:flutter/material.dart';
import 'package:colibri_app/src/bloc/provider.dart';
 

class LoginPage extends StatelessWidget {

  Color colorApp = Colors.blue[600];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          children: <Widget>[
            _crearFondo(context),
            _loginForm(context),
            Positioned(
              child: backButtom(context),
              top: 40.0, left: 10.0,
            ),
          ],
        )
      );
  }

  Widget _loginForm(BuildContext context){

    final bloc = Provider.of(context);

    final size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Column(
        children: <Widget>[

          SafeArea(
            child: Container(
              height: 200.0,
            )
          ),

          Container(
            width: size.width * 0.85,
            margin:EdgeInsets.symmetric(vertical: 30),
            padding: EdgeInsets.symmetric(vertical:50.0),
            decoration : BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5.0),
              boxShadow: <BoxShadow>[
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 3.0,
                  offset: Offset(2.0,5.0),
                  spreadRadius: 3.0
                )
              ]

            ),
            child: Column(
              children: <Widget>[
                Text("ingreso", style: TextStyle(fontSize:20.0),),
                SizedBox(height: 10.0, width: 0.0),
                _crearEmail(bloc),
                SizedBox(height: 10.0, width: 0.0),
                _crearPassword(bloc),
                SizedBox(height: 30.0, width: 0.0),
                _crearBoton(bloc)

              ]
            ),
          ),

          Text("¿Olvido la contraseña?"),
          SizedBox(height: 100.0, width: 0.0),

        ]
      ),
    );

  }

  Widget backButtom(BuildContext context){

    return GestureDetector(
      onTap: (){
        Navigator.pop(context);
      },
      child: Row(
        children: <Widget>[
          Icon(Icons.arrow_back_ios, color: Colors.white,),
          Text("Volver", style: TextStyle(color: Colors.white, fontSize: 16) ,)
        ],
      ),
    );

  }

  Widget _crearEmail(LoginBloc bloc){

    
  final TextEditingController _controller1 = new TextEditingController();

    return StreamBuilder(
      stream: bloc.emailStream ,
      builder: (BuildContext context, AsyncSnapshot snapshot){
        return Container(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: TextField(
            //controller: _controller1,
            onChanged: bloc.changeEmail ,
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              icon: Icon(Icons.alternate_email, color: colorApp),
              hintText: "ejemplo@correo.com",
              labelText: "Correo electronico ",
              //counterText: snapshot.data,
              errorText: snapshot.error
            ),
          ),
        ); 
      },
    );
    


  }

    Widget _crearPassword(LoginBloc bloc){
    
    final TextEditingController _controller = new TextEditingController();
    
      return StreamBuilder(
        stream: bloc.passwordStream ,
        builder: (BuildContext context, AsyncSnapshot snapshot){
          return Container(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: TextField(
              onChanged: bloc.changePassword,
              obscureText: true,
              decoration: InputDecoration(
                icon: Icon(Icons.https, color: colorApp),
                labelText: "Contraseña",
                //counterText: snapshot.data,
                errorText: snapshot.error
              ),
            ),
          );  
        }
      );
  }

  Widget _crearBoton(LoginBloc bloc){
    
    return StreamBuilder(
      stream: bloc.formValidStream ,
      builder: (BuildContext context, AsyncSnapshot snapshot){
        return RaisedButton(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal:80.0, vertical:15.0 ),
            child: Text("Ingresar"),
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5.0)
          ),
          elevation: 0.0,//quitar la elevacion del boton 
          color: colorApp,
          textColor: Colors.white,
          onPressed: snapshot.hasData ? ()=>_login(bloc, context) : null
        );
      },
    );
  }

  _login(LoginBloc bloc, BuildContext context){
    print("===================");
    print("Email: ${bloc.email}");
    print("Password: ${bloc.password}");
    print("===================");
    Navigator.pushReplacementNamed(context, "home"); //navegar sinpestaña de regresar
  }

  Widget _crearFondo(BuildContext context){

    final size = MediaQuery.of(context).size;

    final fondo=  Container(
      height: size.height *0.4, //40% de la pantalla 
      width: double.infinity, //Todo el ancho de la pantalla 
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: <Color>[
            Color.fromRGBO(19, 106, 138, 1.0),
            Color.fromRGBO(38, 100, 103, 1.0)
          ]
        )
      ),
    );


    final circulo = Container(
      width: 100.0,
      height: 100.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100.0),
        color: Color.fromRGBO(255, 255, 255, 0.05)
      ),
    );

    final circulo2 = Container(
      width: 70.0,
      height: 70.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100.0),
        color: Color.fromRGBO(255, 255, 255, 0.05)
      ),
    );

    return Stack(
      children: <Widget>[
        fondo,
        Positioned(top: 90.0, left: 30.0, child: circulo),
        Positioned(top: -40.0, right: -30.0, child: circulo),
        Positioned(bottom:90.0, right: 30.0, child: circulo),
        Positioned(bottom:-50.0, left: -20.0, child: circulo),

        Positioned(top:30.0, left: -20.0, child: circulo2),
        Positioned(top:80.0, left: 250.0, child: circulo2),
        Container(
          padding: EdgeInsets.only(top: 80.0),
          child: Column(
            children: <Widget>[
              Container(
                width: 150.0,
                child: Image(
                  image: AssetImage("assets/colibri_logo.png"),
                ),
              ),
              SizedBox(height: 10.0, width: double.infinity),
              Text("Colibri 3D",style: TextStyle(color: Colors.white, fontSize: 30.0),)
            ]
          ),
        ),

        
      ],
    );

  }

}