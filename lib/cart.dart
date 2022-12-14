import 'package:exam/homeprovider.dart';
import 'package:exam/main.dart';
import 'package:flutter/material.dart';
import 'package:collection/collection.dart';
import 'package:provider/provider.dart';

class cart extends StatefulWidget {
  const cart({Key? key}) : super(key: key);

  @override
  State<cart> createState() => _cartState();
}

class _cartState extends State<cart> {
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
          body: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Stack(
              children: [
                ListView.builder(
                  itemCount: Provider.of<homeProvider>(context, listen: true)
                      .cart
                      .length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            primary: Colors.white, elevation: 0),
                        child: Container(
                          height: 120,
                          margin: EdgeInsets.only(left: 10, right: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                          height: 60,
                                          width: 60,
                                          child: Image.asset(
                                              Provider.of<homeProvider>(
                                                      context,
                                                      listen: true)
                                                  .cart[index]
                                                  .photo as String)),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        "${Provider.of<homeProvider>(context, listen: true).cart[index].name}",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 25),
                                      ),
                                    ],
                                  ),
                                  Text(
                                    "??? ${Provider.of<homeProvider>(context).cart[index].price}",
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 22),
                                  ),
                                ],
                              ),

                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [

                                  IconButton(
                                    onPressed: () {Provider.of<homeProvider>(context,listen: false).remove(index);price.removeAt(index);},
                                    icon: Icon(Icons.delete, color: Colors.black),
                                  ),

                                  IconButton(
                                      onPressed: () {
                                        Provider.of<homeProvider>(context, listen: false).minus();
                                      },
                                      icon: Icon(
                                        Icons.remove,
                                        color: Colors.black,
                                      )),
                                  Text(
                                    "${Provider.of<homeProvider>(context, listen: true).i}",
                                    style: TextStyle(
                                        fontSize: 30,
                                        color: Colors.green,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  IconButton(
                                    onPressed: () {
                                      Provider.of<homeProvider>(context, listen: false).plus();
                                    },
                                    icon: Icon(
                                      Icons.add,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Container(
                        height: 60,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15)),
                        child: Row(
                          children: [
                            Column(
                              children: [
                                Text(
                                  "Total Amount",
                                  style: TextStyle(color: Colors.black),
                                ),
                                Text(
                                  "??? ${price.sum}",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 30),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          )),
    );
  }
}
