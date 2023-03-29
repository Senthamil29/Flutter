import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:learn_flutter_30days/pages/homePage.dart';
import 'package:learn_flutter_30days/pages/loginPage.dart';
import 'package:learn_flutter_30days/utilis/routes.dart';
import 'package:learn_flutter_30days/widgets/rich_text.dart';
import 'package:learn_flutter_30days/widgets/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      debugShowCheckedModeBanner: false,
      theme: MyTheme.lightTheme(context),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      //initialRoute: MyRoute.homeRoute,
      routes: {
        "/": (context) => MyRichText(),
        MyRoute.homeRoute: (context) => HomePage(),
        MyRoute.loginRoute: (context) => LoginPage(),
        MyRoute.richTextRoute: (context) => MyRichText(),
      },
    );
  }
}
