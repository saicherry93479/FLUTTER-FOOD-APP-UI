import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:learning_one/Data/Data.dart';
import 'package:learning_one/Screens/HomeScreen.dart';
import 'package:learning_one/models/models.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        // mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const HomeScreen().Header("Payments", "trusted payments"),
          const SizedBox(
            height: 15,
          ),
          Expanded(
            child: ListView.builder(
                itemCount: paymentData.length,
                itemBuilder: (context, index) =>
                    PaymentWidget(paymentData[index])),
          ),
        ],
      ),
    ));
  }

  Container PaymentWidget(PaymentItems p) {
    return Container(
      padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
      margin: const EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
          color: p.paid ? const Color(0xFF69E5B9) : const Color(0xFFE5AC69),
          borderRadius: const BorderRadius.all(Radius.circular(15))),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Payments id :",
                    style: GoogleFonts.montserrat(
                        fontSize: 12, color: Colors.white)),
                const SizedBox(
                  height: 4,
                ),
                Text(p.id,
                    style: GoogleFonts.montserrat(
                        fontSize: 14, color: Colors.white, letterSpacing: 2)),
                const SizedBox(
                  height: 4,
                ),
              ],
            ),
            CircleAvatar(
              radius: 15,
              backgroundImage: p.paid
                  ? const AssetImage("assets/images/PaymentSucess.png")
                  : const AssetImage("assets/images/PaymentCancel.png"),
            )
          ]),
    );
  }
}
