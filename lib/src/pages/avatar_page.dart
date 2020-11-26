import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Avatar Component"),
        actions: <Widget>[
          Container(
            padding: EdgeInsets.all(5),
            child: CircleAvatar(
              radius: 23,
              backgroundImage: NetworkImage("https://monteluke.com.au/wp-content/gallery/linkedin-profile-pictures/1.jpg"),
            ),
          ),
          Container(
            padding: EdgeInsets.all(5),
            child: CircleAvatar(
             child: Text("A", style: TextStyle(fontSize: 24),),
            ),
          )
        ],
      ),
      body: Center(
        child: FadeInImage(
          image: NetworkImage("https://monteluke.com.au/wp-content/gallery/linkedin-profile-pictures/1.jpg"),
          placeholder: AssetImage("assets/images/jar-loading.gif"),
          fadeInDuration: Duration(milliseconds: 200),
        ),
      ),
    );
  }
}