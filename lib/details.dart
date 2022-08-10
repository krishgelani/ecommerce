import 'package:exam/homeprovider.dart';
import 'package:exam/main.dart';
import 'package:exam/modelclass.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class details extends StatefulWidget {
  const details({Key? key}) : super(key: key);

  @override
  State<details> createState() => _detailsState();
}

class _detailsState extends State<details> {
  int pprice = 20;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
          ),
          elevation: 0,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 400,
                  child: Image.asset(
                      "${Provider.of<homeProvider>(context, listen: false).datapick?.photo}"),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "${Provider.of<homeProvider>(context, listen: false).datapick?.name}",
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 8,),
                    Text(
                      "₹ ${Provider.of<homeProvider>(context, listen: false).datapick?.price}",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "${Provider.of<homeProvider>(context).datapick?.details}",
                  style: TextStyle(color: Colors.black),
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Row(
                        children: [
                          IconButton(
                              onPressed: () {
                                Provider.of<homeProvider>(context, listen: false).minus();
                              },
                              icon: Icon(
                                Icons.remove,
                                color: Colors.black,
                              )),
                          Text(
                            "${Provider.of<homeProvider>(context, listen: true).i}", style: TextStyle(fontSize: 30, color: Colors.green, fontWeight: FontWeight.bold),
                          ),
                          IconButton(
                              onPressed: () {
                                Provider.of<homeProvider>(context, listen: false).plus();
                                // Provider.of<homeProvider>(context).total(Provider.of<homeProvider>(context).datapick?.price as int);
                              },
                              icon: Icon(
                                Icons.add,
                                color: Colors.black,
                              )),
                        ],
                      ),
                    ),
                    Container(
                      height: 50,
                      width: 150,
                      child: ElevatedButton(
                        onPressed: () {
                          Provider.of<homeProvider>(context,listen: false).cart.add(Provider.of<homeProvider>(context,listen: false).datapick!);
                          price.add(Provider.of<homeProvider>(context,listen: false).datapick!.price as int);
                        },
                        child: Text(
                          "Add To Cart",
                        ),
                        style: ElevatedButton.styleFrom(primary: Colors.green),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
