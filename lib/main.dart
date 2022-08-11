import 'package:exam/cart.dart';
import 'package:exam/details.dart';
import 'package:exam/home.dart';
import 'package:exam/homeprovider.dart';
import 'package:exam/navigationbar/navigation.dart';
import 'package:exam/navigationbar/pageprovider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

List photos = ["asset/image/apple.png"];
List name = ["Apple"];
List<int> price = [];

void main()
{
  runApp(
    MultiProvider(
      providers: [
        ListenableProvider<homeProvider>(create: (context)=> homeProvider()),
        ListenableProvider<pageProvider>(create: (context)=> pageProvider())
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: '/home',
        routes: {
          '/':(context) => home(),
          '/details':(context) => details(),
          '/cart':(context) => cart(),
          '/home':(context) => navigator(),
        },
      ),
    )
  );
}