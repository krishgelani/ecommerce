import 'package:exam/modelclass.dart';
import 'package:flutter/material.dart';

class homeProvider extends ChangeNotifier
{
  List<Model> l1 = [
    Model(name: "Apple",price: 40,photo: "asset/image/apple.png",details: "An apple is an edible fruit produced by an apple tree. Apple trees are cultivated worldwide and are the most widely grown species in the genus Malus. The tree originated in Central Asia, where its wild ancestor, Malus sieversii, is still found today."),
    Model(name: "Banana",price: 10,photo: "asset/image/banana.png",details: "A banana is an elongated, edible fruit – botanically a berry – produced by several kinds of large herbaceous flowering plants in the genus Musa. In some countries, bananas used for cooking may be called plantains, distinguishing them from dessert bananas."),
    Model(name: "Broccoli",price: 20,photo: "asset/image/broccoli.png",details: "Broccoli is an edible green plant in the cabbage family whose large flowering head, stalk and small associated leaves are eaten as a vegetable. Broccoli is classified in the Italica cultivar group of the species Brassica oleracea."),
    Model(name: "Carrot",price: 15,photo: "asset/image/carrot.png",details: "The carrot is a root vegetable, typically orange in color, though purple, black, red, white, and yellow cultivars exist, all of which are domesticated forms of the wild carrot, Daucus carota, native to Europe and Southwestern Asia."),
    Model(name: "Kiwi",price: 20,photo: "asset/image/kiwi.png",details: "Kiwifruit or Chinese gooseberry is the edible berry of several species of woody vines in the genus Actinidia. The most common cultivar group of kiwifruit is oval, about the size of a large hen's egg: 5–8 centimetres in length and 4.5–5.5 cm in diameter. "),
    Model(name: "Orange",price: 20,photo: "asset/image/orange.png",details: "An orange is a fruit of various citrus species in the family Rutaceae; it primarily refers to Citrus × sinensis, which is also called sweet orange, to distinguish it from the related Citrus × aurantium, referred to as bitter orange."),
    Model(name: "Peppers",price: 15,photo: "asset/image/peppers.png",details: "Capsicum is a genus of flowering plants in the nightshade family Solanaceae, native to the Americas, cultivated worldwide for their chili pepper or bell pepper fruit."),
    Model(name: "Strawberry",price: 30,photo: "asset/image/strawberry.png",details: "The garden strawberry (or simply strawberry; Fragaria × ananassa)[1] is a widely grown hybrid species of the genus Fragaria, collectively known as the strawberries, which are cultivated worldwide for their fruit. "),
    Model(name: "Watermelon",price: 100,photo: "asset/image/watermelon.png",details: "Watermelon is a flowering plant species of the Cucurbitaceae family and the name of its edible fruit. A scrambling and trailing vine-like plant, it is a highly cultivated fruit worldwide, with more than 1,000 varieties."),
  ];

  List<Model> mobile = [
    Model(name: "Iphone 12",price: 56000,photo: "asset/image/iphone 12.jpg",details: "smartphone. An edge-to-edge OLED display. Ceramic Shield with four times better drop performance. And Night mode on every camera. iPhone 12 has it all."),
    Model(name: "Iphone 13",price: 76000,photo: "asset/image/iphone 13.jpg",details: "Our most advanced dual‐camera system ever. An even brighter Oled display. A lightning‐fast chip that leaves the competition behind. A huge leap in battery life. SIM-free"),
    Model(name: "Samsung Galaxy S22",price: 96000,photo: "asset/image/galaxy s22.jpg",details: "The Samsung Galaxy S22 is a series of Android-based smartphones designed, developed, manufactured, and marketed by Samsung Electronics"),
    Model(name: "Asus Rog 6",price: 102000,photo: "asset/image/rog 6.jpg",details: "The legend has evolved! The ROG Phone 6 is the latest incarnation of world-beating gaming phone. It harnesses the brute gaming power of the latest Qualcomm® Snapdragon® 8+ Gen 1 Mobile Platform, with a new class leading GameCool 6 thermal system that lets you smash every barrier and break every limit, and a 165 Hz display for a revolutionary visual experience. For total control, there’s the AirTrigger 6 system and the Armoury Crate app, and for marathon gameplay, there’s a monster 6000 mAh1 battery. Dare to choose the mighty ROG Phone 6, and you will be rewarded with an experience that befits a true legend."),
    Model(name: "One Plus 10 Pro",price: 86000,photo: "asset/image/oneplus 10 pro.jpg",details: "The OnePlus 10 Pro's 6.7 QHD+ 120 Hz Fluid AMOLED display incorporates stunning LTPO 2.0 technology and exacting color accuracy. Complemented by higher power"),
    Model(name: "Realme 8 Pro",price: 18000,photo: "asset/image/realme 8 pro.jpg",details: "If you are a fan ofComputer and electronics - you like keeping up with the latest technology without leaving any detail - buy Smartphone Realme 8 Pro 6.4 Octa Core 8 GB RAM 128 GBAt the best price."),
    Model(name: "Mi Note 10 Pro",price: 19000,photo: "asset/image/mi note 10 pro.jpg",details: "Processor: Qualcomm Snapdragon 732G with Kryo 470 Octa-core; 8nm process; Up to 2.3GHz clock speed · Camera: 64 MP Quad Rear camera with 8MP Ultra-wide"),
    Model(name: "Realme 9 Pro",price: 22000,photo: "asset/image/realme 9 pro.jpg",details: "The realme 9 Pro is powered by Qualcomm® Snapdragon™ 695, a processor so fast, even the most resource-demanding apps run smoothly."),
    Model(name: "One Plus Nord",price: 26000,photo: "asset/image/oneplus nord.jpg",details: "The OnePlus Nord is an Android-based smartphone manufactured by OnePlus, unveiled on 21 July 2020. It is the first device in the Nord series. It is the first mid-range smartphone from OnePlus since the 2015 OnePlus X."),
  ];

  Model? datapick;
  List<Model> cart = [];

  int k = 1;

  int i = 1;
  void plus()
  {
    i++;
    notifyListeners();
  }

  void minus()
  {
    i--;
    notifyListeners();
  }

  void zero()
  {
    i = 1;
    notifyListeners();
  }

  void remove(int index)
  {
    cart.removeAt(index);
    notifyListeners();
  }

  // void total(int t)
  // {
  //   k = i * t;
  //   notifyListeners();
  // }

}