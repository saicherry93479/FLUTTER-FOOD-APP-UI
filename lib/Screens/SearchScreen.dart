// ignore: file_names
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:learning_one/Data/Data.dart';
import 'package:learning_one/Screens/Screens.dart';
import './HomeScreen.dart';



class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 3, horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HomeScreen().Header("Choose Food", "what u like most"),
            const SizedBox(
              height: 20,
            ),
            TextFieldMethod(),
            const SizedBox(
              height: 10,
            ),
            Text(
              "recent searches",
              style: GoogleFonts.montserrat(
                  fontSize: 14, fontWeight: FontWeight.w200),
            ),
            const SizedBox(
              height: 3,
            ),
            Wrap(
                direction: Axis.horizontal,
                children: List.generate(
                    searchItems.length,
                    (index) => SearchItem(
                        searchItems[index][0], searchItems[index][1])))
          ],
        ),
      ),
    );
  }
//


// SEARCH ITEM ##########################################

  Container SearchItem(String s, Color c) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 15),
      margin: const EdgeInsets.only(top: 20, left: 10),
      decoration: BoxDecoration(
          color: c, borderRadius: const BorderRadius.all(Radius.circular(10))),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              s,
              style: GoogleFonts.montserrat(color: Colors.white),
            ),
            const SizedBox(
              width: 10,
            ),
            CircleAvatar(
              backgroundColor: c,
              radius: 7,
              backgroundImage: const AssetImage('assets/images/IconCancel.png'),
            )
          ]),
    );
  }


  // TEXTFIELD METHOD ############################################

  TextField TextFieldMethod() {
    return const TextField(
      enabled: false,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.all(2),
          enabled: true,
          fillColor: Color(0xFFC8ECEE),
          filled: true,
          border: OutlineInputBorder(
              borderSide: BorderSide(
                  width: 1, color: Color.fromARGB(120, 227, 222, 222)),
              borderRadius: BorderRadius.all(Radius.circular(15))),
          iconColor: Color(0xFF6A6464),
          hintText: "search for variaties",
          hintStyle: TextStyle(
              color: Color(0xFF999197), fontSize: 16, letterSpacing: 2),
          prefixIcon: Icon(
            Icons.search,
            size: 30,
          )),
    );
  }
}
