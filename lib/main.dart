import 'package:flutter/material.dart';
import 'package:flutter3/drawer.dart';
import 'package:flutter3/portfolio.dart';
import 'package:flutter3/routes.dart';
import 'contact.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      routes: {
        "/": (context)=> PortfolioPage(),
        MyRoutes.contactRoutes: (context)=> ContactPage(),
        MyRoutes.portfolioRoutes: (context)=> PortfolioPage(),
        MyRoutes.drawerRoute:(context)=>MyDrawer(),

      },
    );
  }
}
