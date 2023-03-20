import 'package:flutter/material.dart';
import 'package:learn_flutter_30days/utilis/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<StatefulWidget> createState() => MyLoginPage();
}

class MyLoginPage extends State<LoginPage> {
  final formKey = GlobalKey<FormState>();
  String name = "";
  bool buttonClicked = false;

  Widget build(BuildContext context) {
    return Material(
        child: SingleChildScrollView(
      child: Form(
        key: formKey,
        child: Column(
          children: [
            Image.asset(
              "assets/images/login.png",
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Welcome $name",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  TextFormField(
                      onChanged: (value) {
                        name = value;
                        setState(() {});
                      },
                      decoration: InputDecoration(
                          labelText: "Username", hintText: "Enter Username"),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Username can't be empty";
                        }
                      }),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                        labelText: "Password", hintText: "Enter Password"),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Password can't be empty";
                      } else if (value.length < 6) {
                        return "Password length should be atleast 6 characters";
                      }
                    },
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  // ElevatedButton(
                  //     onPressed: () {
                  //       if (formKey.currentState!.validate()) {
                  //         Navigator.pushNamed(context, MyRoute.homeRoute);
                  //       }
                  //     },
                  //     child: Text("Login"))

                  InkWell(
                    onTap: () async {
                      if (formKey.currentState!.validate()) {
                        setState(() {
                          buttonClicked = true;
                        });
                        await Future.delayed(Duration(seconds: 1));
                        Navigator.pushNamed(context, MyRoute.homeRoute);
                      }
                    },
                    child: AnimatedContainer(
                      duration: Duration(seconds: 1),
                      width: buttonClicked ? 40 : 130,
                      height: 40,
                      alignment: Alignment.center,
                      child: buttonClicked
                          ? Icon(
                              Icons.done,
                              color: Colors.white,
                            )
                          : Text(
                              "Login",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                      decoration: BoxDecoration(
                        color: Colors.deepPurple,
                        borderRadius:
                            BorderRadius.circular(buttonClicked ? 50 : 8),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
