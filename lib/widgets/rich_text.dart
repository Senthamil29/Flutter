import 'package:flutter/material.dart';

class MyRichText extends StatelessWidget {
  const MyRichText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Rich Text'.toUpperCase()),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Text.rich(
          TextSpan(
            text: 'My',
            children: [
              TextSpan(
                text: ' Flutter',
                style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              TextSpan(
                  text: ' App',
                  style: TextStyle(
                    fontSize: 10.0,
                    color: Colors.blue[300],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
