import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cards Component"),
      ),
      body: ListView(
        padding: EdgeInsets.all(15),
        children: <Widget>[
          cardWithParameter(2),
        ],
      )
    );
  }


  Widget _cardType1(){
    return Card(
        elevation: 4.0,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20)
        ),
        child: Column(
          children: <Widget>[
            ListTile(
              title: Text("Soy el título del card"),
              leading: Icon(
                Icons.photo_album,
                color: Colors.lightBlueAccent,
              ),
              subtitle: Text("Esta es la descripción del card"),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                FlatButton(
                  onPressed: (){},
                  child: Text("Cancelar"),
                ),
                FlatButton(
                  onPressed: (){},
                  child: Text("Okay"),
                )
              ],
            )
          ],
        )
    );
  }

  Widget _cardType2(){
    return Card(
      elevation: 4.0,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20)
      ),
      clipBehavior: Clip.antiAlias,
      child: Column(
        children: <Widget>[
          FadeInImage(
            image: NetworkImage("https://lh3.googleusercontent.com/proxy/tFHl7SDAsXFj-btBtMn8hRCmemiRgHqPwsCEB0dEy52NzcRNVSrllAMmJTOmtDUaR5DPMVXB4LmAKX16JcjhKltwA-AHFFZ2-mIADYApXc-AwxK1wEp0vfCR"),
            placeholder: AssetImage("assets/images/jar-loading.gif"),
            height: 150,
            fit: BoxFit.cover,
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: Text("Descripción de la imagen"),
          )
        ],
      ),
    );
  }

  Widget cardWithParameter(int typeCard){
    if(typeCard == 1){
      return Card(
          elevation: 4.0,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20)
          ),
          child: Column(
            children: <Widget>[
              ListTile(
                title: Text("Soy el título del card"),
                leading: Icon(
                  Icons.photo_album,
                  color: Colors.lightBlueAccent,
                ),
                subtitle: Text("Esta es la descripción del card"),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  FlatButton(
                    onPressed: (){},
                    child: Text("Cancelar"),
                  ),
                  FlatButton(
                    onPressed: (){},
                    child: Text("Okay"),
                  )
                ],
              )
            ],
          )
      );
    }else{
      return Card(
        elevation: 4.0,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20)
        ),
        clipBehavior: Clip.antiAlias,
        child: Column(
          children: <Widget>[
            FadeInImage(
              image: NetworkImage("https://lh3.googleusercontent.com/proxy/tFHl7SDAsXFj-btBtMn8hRCmemiRgHqPwsCEB0dEy52NzcRNVSrllAMmJTOmtDUaR5DPMVXB4LmAKX16JcjhKltwA-AHFFZ2-mIADYApXc-AwxK1wEp0vfCR"),
              placeholder: AssetImage("assets/images/jar-loading.gif"),
              height: 150,
              fit: BoxFit.cover,
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Text("Descripción de la imagen"),
            )
          ],
        ),
      );
    }
  }

}