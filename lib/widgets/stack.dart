import 'package:flutter/material.dart';

class MyStack extends StatelessWidget {
  const MyStack({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade800,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Stack'),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(16),
          constraints: BoxConstraints.expand(height: 450, width: 370),
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                  color: Colors.white24,
                  blurRadius: 10,
                  spreadRadius: 5,
                  offset: Offset(0, 2)),
            ],
            image: DecorationImage(
                image: AssetImage("assets/images/stackimg.jfif"),
                fit: BoxFit.cover),
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Stack(
            children: [
              Positioned(
                child: Text(
                  "Editor's Choice",
                  style: TextStyle(
                    color: Colors.white60,
                    fontSize: 18,
                  ),
                ),
              ),
              Positioned(
                top: 22,
                child: Text(
                  'The Art of Making a Coffee',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: 22),
                ),
              ),
              Positioned(
                bottom: 22,
                right: 0,
                child: Text(
                  'Learn to make the perfect Coffee',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                right: 0,
                child: Text(
                  'Coffee with Tea',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
