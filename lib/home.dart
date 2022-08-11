import 'dart:io';

import 'package:exam/homeprovider.dart';
import 'package:exam/modelclass.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  var homeproviderfalse;
  var homeprovidertrue;

  @override
  Widget build(BuildContext context) {
    homeproviderfalse = Provider.of<homeProvider>(context, listen: false);
    homeprovidertrue = Provider.of<homeProvider>(context, listen: true);

    return DefaultTabController(
      length: 2,
      child: SafeArea(
        child: Scaffold(


          drawer: Drawer(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 300,
                  width: double.infinity,
                  color: Colors.green,
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 90,
                          width: 90,
                          child: CircleAvatar(
                            backgroundColor: Colors.grey.shade300,
                            backgroundImage: AssetImage("asset/image/thomas shelby.jpg"),
                          ),
                        ),
                        SizedBox(height: 30,),
                        Text("Krish Gelani",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18),),
                        SizedBox(height: 4,),
                        Text("+91 7862952601",style: TextStyle(color: Colors.grey.shade300,fontWeight: FontWeight.w400,fontSize: 15),),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),

          body: NestedScrollView(
            floatHeaderSlivers: true,
            headerSliverBuilder: (context, innerBoxIsScrolled) => [
              SliverAppBar(
                floating: true,
                snap: true,
                backgroundColor: Colors.green,
                centerTitle: true,
                title: Text(
                  "Mahant Store",
                  style: TextStyle(color: Colors.white),
                ),
                elevation: 0,
                actions: [
                  IconButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/cart');
                      },
                      icon: Icon(
                        Icons.shopping_cart,
                        color: Colors.white,
                      )),
                  SizedBox(
                    width: 10,
                  ),
                ],

                bottom: TabBar(
                  indicatorColor: Colors.white,
                  tabs: [
                    Tab(text: "Groceries",),
                    Tab(text: "Mobiles",),
                  ],
                ),
              ),
            ],
            body: TabBarView(
              children: [
                vegetables(),
                mobiles(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget vegetables() {

    return GridView.builder(
      gridDelegate:
      SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemCount: Provider.of<homeProvider>(context).l1.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            height: 200,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [

                  Align(
                      alignment: Alignment.centerRight,
                      child: Icon(Icons.favorite)),
                  GestureDetector(
                    onTap: () {
                      homeproviderfalse.datapick = Model(
                        name: homeproviderfalse.l1[index].name,
                        price: homeproviderfalse.l1[index].price,
                        photo: homeproviderfalse.l1[index].photo,
                        details: homeproviderfalse.l1[index].details,
                      );
                      Navigator.pushNamed(context, '/details');
                      Provider.of<homeProvider>(context,listen: false).zero();
                    },
                    child: Container(
                        height: 60,
                        width: 700,
                        child:
                        Image.asset(homeproviderfalse.l1[index].photo)),
                  ),

                  Text(
                    "${homeproviderfalse.l1[index].name}",
                    style: TextStyle(fontSize: 18),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("₹ ${homeproviderfalse.l1[index].price}"),
                      Container(
                        height: 31,
                        width: 40,
                        decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Icon(Icons.shopping_bag),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }


  Widget mobiles() {


    return ListView.builder(
      itemCount: Provider.of<homeProvider>(context).mobile.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(20.0),
          child: GestureDetector(
            onTap: (){
              homeproviderfalse.datapick = Model(
                name: homeproviderfalse.mobile[index].name,
                price: homeproviderfalse.mobile[index].price,
                photo: homeproviderfalse.mobile[index].photo,
                details: homeproviderfalse.mobile[index].details,
              );
              Navigator.pushNamed(context, '/details');
              Provider.of<homeProvider>(context,listen: false).zero();
            },
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                        height: 130,
                        width: 130,
                        child:
                        Image.asset(homeproviderfalse.mobile[index].photo)),

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "${homeproviderfalse.mobile[index].name}",
                          style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text("₹ ${homeproviderfalse.mobile[index].price}",style: TextStyle(fontSize: 15),),
                        // Container(
                        //   height: 31,
                        //   width: 40,
                        //   decoration: BoxDecoration(
                        //     color: Colors.green,
                        //     borderRadius: BorderRadius.circular(10),
                        //   ),
                        //   child: Icon(Icons.shopping_bag),
                        // ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}