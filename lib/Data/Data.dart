import 'package:flutter/material.dart';
// import 'package:learning_one/models/Popular.dart';

import '../models/models.dart';



// DATA FOR ON  BORAD SCREEENS   #######################################

List<OnBoard> onBoardData = [
  OnBoard(
      image: "assets/images/On-Board-One.png",
      header: "Welcome ",
      subHeader: "You are about to enter a brand new experience of Vegetables",
      primary: Color.fromARGB(255, 138, 225, 178),
      secondary: Color(0xFF1ECD6E),
      buttonText: "continue",
      gradientOne: Color(0XFF66AB86).withOpacity(0),
      gradientTwo: Color(0XFF8AE1B2)),
  OnBoard(
      image: "assets/images/On-Board-Two.png",
      header: "Have better Health ",
      subHeader:
          "We provides the good organic food which was grown in farms by the farmers  which maintains ur health good ",
      primary: Color.fromARGB(255, 240, 238, 241),
      secondary: Color.fromARGB(255, 241, 120, 183),
      buttonText: "continue",
      gradientOne: Color.fromARGB(255, 240, 238, 241).withOpacity(0),
      gradientTwo: Color.fromARGB(255, 240, 238, 241)),
  OnBoard(
      image: "assets/images/on-Board-Three.png",
      header: "Vegetables or Fruits",
      subHeader:
          "Not only vegetables , we also provide fresh and riped fruits for u , which are fresh . The day plucked fruits will be delivered.",
      primary: Color.fromARGB(255, 244, 246, 145),
      secondary: Color.fromARGB(255, 188, 170, 12),
      buttonText: "continue",
      gradientOne: Color.fromARGB(255, 244, 246, 145).withOpacity(0),
      gradientTwo: Color.fromARGB(255, 244, 246, 145)),
  OnBoard(
      image: "assets/images/On-Board-Four.png",
      header: "Delivery ???",
      subHeader:
          "we ensures you best delivery and good delivery.Return policy also available .We will be in 30 min from your order at your doorstep.",
      primary: Color.fromARGB(255, 38, 38, 36),
      secondary: Colors.white,
      buttonText: "LOGIN",
      gradientOne: Color.fromARGB(255, 38, 38, 36).withOpacity(0.26),
      gradientTwo: Color.fromARGB(255, 38, 38, 36)),
];


// DATA FOR HOME SCREEN ####################################################
// *****************CATREGORIES DATA ***************************************

List<Categories> CategoriesDatew = [
  Categories(image: 'assets/images/VegetablesImage.png', name: 'vegetables'),
  Categories(image: 'assets/images/DryFruits.png', name: 'DryFruits'),
  Categories(image: 'assets/images/NutsImage.png', name: 'Nuts'),
];



// ******************POPULAR DATA *************************

List<Popularity> PopularData = [
  Popularity(
      image: 'assets/images/Tomato.png',
      desc: "20% discount",
      price: "\$ 4.08"),
  Popularity(
      image: 'assets/images/Orange.png',
      desc: "10% discount",
      price: "\$ 7.23"),
];

// DATA FOR SEARCH SCREENN  ############################################

List searchItems = [
  ['tomato', const Color(0xFFE5AD78)],
  ['Collard Greens', const Color(0xFFB6E578)],
  [
    'Cauli Flower & Cabbage',
    const Color(0xFF6AE3E3),
  ],
  [
    'Brinjal',
    const Color(0xFFcc33ff),
  ],
  [
    'Almond',
    const Color.fromARGB(255, 255, 0, 0),
  ],
  [
    'xyzhg',
    const Color.fromARGB(255, 231, 170, 0),
  ],
  [
    'hsjass',
    const Color.fromARGB(255, 214, 91, 167),
  ]
];


// DATA FOR CART SCREEN ##################################

List<CartList> CartData = [
  CartList(
      image: 'assets/images/Tomatoes.png',
      name: 'TOMATO',
      desc: "ordered 2d 10h 12min ago",
      itemCount: 2,
      paid: false,
      price: '\$ 4.50'),
  CartList(
      image: 'assets/images/Apples.png',
      name: 'Apple',
      desc: "ordered 3d 0h 39min ago",
      itemCount: 7,
      paid: true,
      price: '\$ 8.23'),
  CartList(
      image: 'assets/images/Almond.png',
      name: 'ALMOND',
      desc: "ordered 4d 23h 12min ago",
      itemCount: 1,
      paid: false,
      price: '\$ 1.55'),
  CartList(
      image: 'assets/images/Carrot.png',
      name: 'Carrot',
      desc: "ordered 7d 10h 28min ago",
      itemCount: 4,
      paid: false,
      price: '\$ 3.50'),
  CartList(
      image: 'assets/images/Brinjal.jpg',
      name: 'Brinjal',
      desc: "ordered 9d 10h 12min ago",
      itemCount: 7,
      paid: true,
      price: '\$ 9.23'),
  CartList(
      image: 'assets/images/Tomatoes.png',
      name: 'TOMATO',
      desc: "ordered 2d 10h 12min ago",
      itemCount: 5,
      paid: false,
      price: '\$ 6.50'),
];


// DATA FOR PAYMENTS SCREEEN ##########################################

List<PaymentItems> paymentData = [
  PaymentItems(id: 'ad94835tj371837163', paid: false),
  PaymentItems(id: 'bd95835hk371331635', paid: true),
  PaymentItems(id: 'da48935fh371683316', paid: true),
  PaymentItems(id: '948ad35jt371863713', paid: true),
  PaymentItems(id: '9a4835dj371t168336', paid: false),
  PaymentItems(id: 'ad9835t43j71813632', paid: false),
  PaymentItems(id: 'dd148t353718j36371', paid: true),
  PaymentItems(id: 'hr348187163235tj37', paid: true),
  PaymentItems(id: 'd7483a5163tj783731', paid: true),
  PaymentItems(id: '29d4f835tj371163837', paid: false),
  PaymentItems(id: 'ad94835tj371837163', paid: false),
  PaymentItems(id: 'bd95835hk371331635', paid: true),
  PaymentItems(id: 'da48935fh371683316', paid: true),
  PaymentItems(id: '948ad35jt371863713', paid: true),
  PaymentItems(id: '9a4835dj371t168336', paid: false),
  PaymentItems(id: 'ad9835t43j71813632', paid: false),
  PaymentItems(id: 'dd148t353718j36371', paid: true),
  PaymentItems(id: 'hr348187163235tj37', paid: true),
  PaymentItems(id: 'd7483a5163tj783731', paid: true),
  PaymentItems(id: '29d4f835tj371163837', paid: false),
];
