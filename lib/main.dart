import 'package:flutter/material.dart';
import 'package:flutter_application_listview_2308/cadastro.dart';
import 'package:flutter_application_listview_2308/pets.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      //home:MypetShop()
      routes: {
        '/':(context) => MypetShop(),
        '/myListpets':(context) => Mylistpets(),
      },
    );
  }
}


