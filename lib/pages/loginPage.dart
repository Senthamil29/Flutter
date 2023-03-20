import 'package:flutter/material.dart';
import 'package:learn_flutter_30days/utilis/routes.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
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
              "Welcome",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  TextFormField(
                      decoration: InputDecoration(
                          labelText: "Username", hintText: "Enter Username"),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Enter Username";
                        }
                      }),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                        labelText: "Password", hintText: "Enter Password"),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Enter Password";
                      }
                    },
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        if (formKey.currentState!.validate()) {
                          Navigator.pushNamed(context, MyRoute.homeRoute);
                        }
                      },
                      child: Text("Login"))
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
