import 'package:exam/cart.dart';
import 'package:exam/home.dart';
import 'package:exam/navigationbar/pageprovider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class navigator extends StatefulWidget {
  const navigator({Key? key}) : super(key: key);

  @override
  State<navigator> createState() => _navigatorState();
}

class _navigatorState extends State<navigator> {

  List pageList = [home(),cart()];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: pageList[Provider.of<pageProvider>(context,listen: true).i],
        bottomNavigationBar: BottomNavigationBar(
          onTap: (value){
            Provider.of<pageProvider>(context,listen: false).change(value);
          },
          currentIndex: Provider.of<pageProvider>(context,listen: false).i,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.shopping_cart),label: "Cart"),
          ],
        ),
      ),
    );
  }
}
