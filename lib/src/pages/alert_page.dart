import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Alerts Page"),
      ),
      body: Center(
        child: RaisedButton(
          shape: StadiumBorder(),
          color: Colors.lightBlueAccent,
          child: Text(
            "Mostrar Alerta",
            style: TextStyle(color: Colors.white),
          ),
          onPressed: () {
            showAlert(context);
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_back_ios),
        backgroundColor: Colors.lightBlueAccent,
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }

  void showAlert(BuildContext context) {
    showDialog(
      context: context,
      builder: (context){
        return AlertDialog(
          title: Text("Aquí va el título."),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text("Este es el contenido del alert"),
              SizedBox(height: 10,),
              FlutterLogo(
                size: 100,
              ),
            ],
          ),
          actions: <Widget>[
            FlatButton(
              onPressed: (){
                Navigator.pop(context);
               
              },
              child: Text("Cancelar"),
            ),
            FlatButton(
              onPressed: (){
                Navigator.pop(context);
              },
              child: Text("Okay"),
            )
          ],
        );
      }
    );
  }
}
