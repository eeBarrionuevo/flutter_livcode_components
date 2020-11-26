import 'package:flutter/material.dart';
import 'package:flutter_app_componentes/src/pages/alert_page.dart';
import 'package:flutter_app_componentes/src/pages/avatar_page.dart';
import 'package:flutter_app_componentes/src/pages/card_page.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purpleAccent,
        title: Text("Flutter Components"),
      ),
      body: Column(
        children: <Widget>[
          ListTile(
            title: Text("Alertas"),
            leading: Icon(Icons.add_alert, color: Colors.purpleAccent,),
            trailing: Icon(Icons.chevron_right, color: Colors.purpleAccent,),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(
                builder: (context) => AlertPage()
              ));
            },
          ),

          ListTile(
            title: Text("Avatars"),
            leading: Icon(Icons.person, color: Colors.purpleAccent,),
            trailing: Icon(Icons.chevron_right, color: Colors.purpleAccent,),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(
                  builder: (context) => AvatarPage()
              ));
            },
          ),

          ListTile(
            title: Text("Cards"),
            leading: Icon(Icons.image, color: Colors.purpleAccent,),
            trailing: Icon(Icons.chevron_right, color: Colors.purpleAccent,),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(
                  builder: (context) => CardPage()
              ));
            },
          )
        ],
      ),
    );
  }
}
