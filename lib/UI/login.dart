import 'package:flutter/material.dart';
import 'package:foodyeah/UI/main_menu.dart';
import 'package:foodyeah/model/usuario.dart';
import 'package:foodyeah/utils/http_helper.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final usuarioController = TextEditingController();
  final passwordController = TextEditingController();
  HttpHelper helper;
  @override
  void initState(){
    helper = HttpHelper();
    //initialize
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Image.asset(
          'assets/images/uni.jpg',
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          fit: BoxFit.cover,
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: Container(
            padding: EdgeInsets.fromLTRB(
                MediaQuery.of(context).size.width / 5,
                MediaQuery.of(context).size.height / 16,
                MediaQuery.of(context).size.width / 5,
                0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Center(
                  child: Image(
                    image: AssetImage('assets/images/logo.png'),
                    width: MediaQuery.of(context).size.width / 2,
                    height: MediaQuery.of(context).size.height / 4,
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height / 8,
                ),
                Center(
                  child: TextField(
                    //FocusScope.of(context).requestFocus(new FocusNode()),
                    style: TextStyle(
                      fontFamily: 'Solano',
                      color: Colors.white,
                      fontSize: 30.0,
                    ),
                    cursorColor: Colors.white,
                    autocorrect: false,
                    controller: usuarioController,
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white)),
                      contentPadding:
                          EdgeInsets.only(bottom: 5.0, left: 5.0, right: 5.0),
                      hintText: 'USUARIO',
                      hintStyle:
                          TextStyle(fontFamily: 'Solano', color: Colors.white),
                    ),
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height / 10,
                ),
                Center(
                  child: TextField(
                    style: TextStyle(
                        fontSize: 30.0,
                        fontFamily: 'Solano',
                        color: Colors.white),
                    cursorColor: Colors.white,
                    autocorrect: false,
                    controller: passwordController,
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white)),
                      contentPadding:
                          EdgeInsets.only(bottom: 5.0, left: 5.0, right: 5.0),
                      hintText: 'CONTRASEÑA',
                      hintStyle:
                          TextStyle(fontFamily: 'Solano', color: Colors.white),
                    ),
                  ),
                ),
                Container(
                  //vacio, espacio de separación:
                  height: MediaQuery.of(context).size.height / 6,
                ),
                Center(
                  child: FlatButton(
                    onPressed: () {
                      //Sacamos el usuario y la contraseña:
                      helper.login(usuarioController.text, passwordController.text).then((value){
                        if(value == null) return;
                        Usuario aux = value;
                        Navigator.push(context, MaterialPageRoute(builder: (context) => MainMenu(usuario: aux)));                        
                      });

                    },
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      side: BorderSide(color: Colors.white),
                    ),
                    textColor: Colors.white,
                    splashColor: Colors.grey,
                    color: Colors.red,
                    padding: const EdgeInsets.fromLTRB(
                        50, 10, 50.0, 5), //Definir que tan grande es el boton
                    child: Text(
                      'INGRESAR',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'Solano',
                        fontSize: 25,
                      ),                      
                    ),
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
