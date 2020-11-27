import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  int cantidad = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Input Page"),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        children: <Widget>[
          TextField(
            decoration: InputDecoration(
              icon: Icon(Icons.account_circle),
              suffixIcon: Icon(Icons.accessibility),
              labelText: "Nombre",
              hintText: "Ingrese su nombre...",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12)
              ),
              helperText: "Solo ingresa tu nombre",
              counter: Text("Cant. letras: $cantidad")
            ),
            onChanged: (String value){
              cantidad = value.length;
              setState(() {

              });
            },
          ),
          SizedBox(
            height: 20,
          ),
          TextField(
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
                icon: Icon(Icons.email),
                suffixIcon: Icon(Icons.alternate_email),
                labelText: "Correo electrónico",
                hintText: "Ingrese su correo electrónico...",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12)
                ),
                helperText: "Solo ingresa tu correo electrónico"
            ),
          ),
          SizedBox(
            height: 20,
          ),
          TextField(
            obscureText: true,
            decoration: InputDecoration(
                icon: Icon(Icons.lock),
                suffixIcon: Icon(Icons.vpn_key),
                labelText: "Contraseña",
                hintText: "Ingrese su contraseña...",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12)
                ),
                helperText: "Solo ingresa tu contraseña"
            ),
          ),

          SizedBox(
            height: 20,
          ),

        ],
      )
    );
  }
}