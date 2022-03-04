import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:learning_one/Data/Data.dart';
import 'package:learning_one/Screens/HomeScreen.dart';
import 'package:learning_one/models/Cart.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const HomeScreen()
                .Header("Added Items to Cart", "do payments and get delivered"),
            const SizedBox(
              height: 30,
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: CartData.length,
                  itemBuilder: (BuildContext context, int index) =>
                      CartItem(CartData[index])),
            )
          ],
        ),
      ),
    );
  }

  Container CartItem(CartList c) {
    return Container(
      height: 150,
      margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        boxShadow: [
          BoxShadow(
              color: Colors.black.withOpacity(0.15),
              spreadRadius: 2,
              blurRadius: 2,
              offset: const Offset(0.0, 0.0))
        ],
      ),
      child: Row(
      
        children: [
          Expanded(flex: 1, child: Image(image: AssetImage(c.image))),
          Expanded(
            flex: 1,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    c.name,
                    style: GoogleFonts.montserrat(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        color: Colors.black.withOpacity(0.5)),
                  ),
                  Row(
                    children: [
                      countWidget(c.itemCount.toString()),
                      const SizedBox(
                        width: 20,
                      ),
                      Text(
                        c.price,
                        style: GoogleFonts.montserrat(
                            fontSize: 16, color: Colors.black.withOpacity(0.5)),
                      ),
                    ],
                  ),
                  Text(
                    c.desc,
                    softWrap: true,
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.black.withOpacity(0.5),
                    ),
                  ),
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    child: Text(
                      CartData[0].paid ? "payment done" : "proceed to pay",
                      style: GoogleFonts.montserrat(color: Colors.white),
                    ),
                   
                    decoration: BoxDecoration(
                        color: c.paid
                            ? Colors.pink
                            : const Color.fromARGB(255, 97, 199, 14),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10))),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget countWidget(String count) {
    return Row(
      children: [box("-"), box(count), box("+")],
    );
  }

  Container box(String s) {
    return Container(
      width: 20,
      height: 20,
      child: Center(
        child: Text(
          s,
          style: TextStyle(fontSize: 14),
        ),
      ),
      decoration:
          BoxDecoration(border: Border.all(width: 2, color: Colors.orange)),
    );
  }
}
