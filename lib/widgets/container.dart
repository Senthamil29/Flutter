import 'package:flutter/material.dart';

class MyContainer extends StatelessWidget {
  const MyContainer({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Container'),
        backgroundColor: Colors.green,
      ),
      body: Container(
        width: 250.0,
        height: 150.0,
        padding: EdgeInsets.all(20.0),
        margin: EdgeInsets.all(70.0),
        //color: Colors.grey,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: Colors.blueGrey,
            border: Border.all(color: Colors.green, width: 6.0),
            //borderRadius: BorderRadius.circular(10.0),
            shape: BoxShape.circle,
            image: DecorationImage(
              image: AssetImage('assets/images/conimg.jfif'),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade400,
                blurRadius: 7,
                spreadRadius: 5,
                offset: Offset(4, 4),
              )
            ]),

        //child: Text('Container'),
      ),
    );
  }
}
