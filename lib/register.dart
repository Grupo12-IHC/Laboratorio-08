
import 'package:chat_unsa/Button.dart';
import 'package:chat_unsa/TextFieldContainer.dart';
import 'package:chat_unsa/constant.dart';
import 'package:chat_unsa/login.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Register extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appTitle = 'Form Validation Demo';

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          leading: new IconButton(
            icon: new Icon(Icons.arrow_back_ios, color: Colors.white,),
            onPressed: () => Navigator.of(context).pop(),
          ),
          elevation: 0,
          title: new Text(
              'Registrate',

          ),
          centerTitle: true,
          backgroundColor: colorPrimario,
        ),
        backgroundColor: Colors.white,
        body: MyCustomForm(),
      ),
    );
  }
}

// Create a Form widget.
class MyCustomForm extends StatefulWidget {
  @override
  MyCustomFormState createState() {
    return MyCustomFormState();
  }
}

class MyCustomFormState extends State<MyCustomForm> {

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {

    return Form(
      key: _formKey,
      child: Container(
        width: double.infinity,

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image(
                image: AssetImage('assets/images/login.png')
            ),
            TextFieldContainer(
              child: TextFormField(
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Ingrese datos';
                  }
                  return null;
                },
                decoration: InputDecoration(
                    labelText: 'CUI'
                ),
              ),
            ),
            TextFieldContainer(
              child: TextFormField(
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Ingrese datos';
                  }
                  return null;
                },
                decoration: InputDecoration(
                    labelText: 'Correo institucional'
                ),
              ),
            ),
            TextFieldContainer(
              child: TextFormField(
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Ingrese datos';
                  }
                  return null;
                },
                decoration: InputDecoration(
                    labelText: 'Contraseña'
                ),
              ),
            ),
            Button(
              child: GestureDetector(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Login()),
                  );
                },
                child: Text(
                  'Registrarse',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                      fontWeight: FontWeight.bold
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}