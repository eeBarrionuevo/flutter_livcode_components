import 'package:flutter/material.dart';

class SliderPage extends StatelessWidget {

  List<int> listNumber = [2,3,5,7,8,9,10,11];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Slider Page"),
      ),
      body: Container(
        child: ListView.builder(
          itemCount: listNumber.length,
          itemBuilder: (BuildContext context, int index){
            int item = listNumber[index];
            return FadeInImage(
              placeholder: AssetImage("assets/images/jar-loading.gif"),
              image: NetworkImage("https://picsum.photos/500/300/?image=$item"),
            );
          },
        ),
      )
    );
  }
}