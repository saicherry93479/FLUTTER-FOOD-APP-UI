import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:learning_one/Data/Data.dart';
import 'package:learning_one/models/Popular.dart';
import 'package:learning_one/models/models.dart';

// gradient colors for buttons
const graientColors = [
  [Color(0xFF26DBE7), Color(0xFF7B86EE)],
  [Color(0xFFE78E26), Color(0xFF7B86EE)],
  [Color(0xFFD726E7), Color(0xFF7B86EE)]
];

// Home screen

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Header("Choose Food", "what u like most"),
        const SizedBox(
          height: 20,
        ),
        TextFieldMethod(),
        const SizedBox(
          height: 25,
        ),
        CategoryMethod(),
        const SizedBox(
          height: 25,
        ),
        PopularMethod(),
        const SizedBox(
          height: 25,
        ),
        SelectMethod()
      ]),
    );
  }

  // HEADER METHOD #########################################################################

  Container Header(String header, String subHeader) {
    return Container(
      // color: Colors.red,
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(
          header,
          style: GoogleFonts.montserrat(
              fontSize: 26,
              fontWeight: FontWeight.w500,
              height: 1.23,
              letterSpacing: 2),
        ),
        Text(
          subHeader,
          style: GoogleFonts.montserratAlternates(
            fontSize: 16,
            fontWeight: FontWeight.w200,
          ),
        ),
      ]),
    );
  }

// TextFieldMehod ################################\

  TextField TextFieldMethod() {
    return const TextField(
      enabled: false,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.all(2),
          enabled: true,
          fillColor: Color.fromARGB(120, 227, 222, 222),
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

  // ########################## select method ###############################

  Container SelectMethod() {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Select From",
              style: GoogleFonts.montserrat(
                fontWeight: FontWeight.w400,
                fontSize: 20,
              )),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Select("Discounts", graientColors[0]),
              Select("High Price", graientColors[1]),
              Select("Low Price", graientColors[2])
            ],
          )
        ],
      ),
    );
  }

// Category method #############################################

  Container CategoryMethod() {
    return Container(
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text("Categories",
            style: GoogleFonts.montserrat(
                fontSize: 20, fontWeight: FontWeight.w400)),
        const SizedBox(
          height: 5,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
              children: List.generate(CategoriesDatew.length,
                  (index) => Category(CategoriesDatew[0], index))),
        )
      ]),
    );
  }

// ################ Popular Method ############################################
  Container PopularMethod() {
    return Container(
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text("Popular Sales Today",
            style: GoogleFonts.montserrat(
                fontSize: 20, fontWeight: FontWeight.w400)),
        const SizedBox(
          height: 10,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(PopularData.length,
                (index) => Popular(PopularData[index], index)),
          ),
        )
      ]),
    );
  }

  Container Select(String s, List<Color> col) {
    return Container(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 14),
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [col[0], col[1]])),
        child: Text(s,
            style: GoogleFonts.montserrat(
                fontSize: 14, letterSpacing: 1, color: Colors.white)));
  }

  Container Popular(Popularity p, int a) {
    return Container(
      height: 180,
      width: 180,
      margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 6),
      decoration: a == 0
          ? const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(30)),
              color: Colors.white,
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color.fromARGB(195, 230, 222, 185),
                    Color(0xFF057438)
                  ]),
              boxShadow: [
                  BoxShadow(
                    color: Color.fromRGBO(0, 0, 0, 0.25),
                    blurRadius: 4.0, // soften the shadow
                    spreadRadius: 2.0, //extend the shadow
                    offset: Offset(
                      0.0, // Move to right 10  horizontally
                      0.0, // Move to bottom 10 Vertically
                    ),
                  )
                ])
          : const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(30)),
              color: Colors.white,
              boxShadow: [
                  BoxShadow(
                    color: Color.fromRGBO(0, 0, 0, 0.25),
                    blurRadius: 4.0, // soften the shadow
                    spreadRadius: 2.0, //extend the shadow
                    offset: Offset(
                      0.0, // Move to right 10  horizontally
                      0.0, // Move to bottom 10 Vertically
                    ),
                  )
                ]),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            ClipRRect(
                borderRadius:
                    const BorderRadius.only(topRight: Radius.circular(30)),
                child: Image(image: AssetImage(p.image))),
          ],
        ),
        Container(
          margin: const EdgeInsets.only(left: 20, top: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                p.desc,
                style: TextStyle(
                    fontSize: 14,
                    height: 1.3,
                    color: a == 0
                        ? const Color.fromARGB(255, 206, 201, 201)
                        : const Color.fromARGB(220, 136, 132, 132)),
              ),
              Text(p.price,
                  style: GoogleFonts.montserrat(
                      fontSize: 18,
                      height: 1.3,
                      color: a == 0
                          ? const Color.fromARGB(255, 206, 201, 201)
                          : const Color.fromARGB(220, 136, 132, 132)))
            ],
          ),
        ),
      ]),
    );
  }

  Container Category(Categories ca, int index) {
    return Container(
      height: 100,
      width: 100,
      // padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      margin: const EdgeInsets.only(left: 10, right: 20, top: 20, bottom: 20),
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(20)),
          color: Colors.white,
          border:
              index == 0 ? Border.all(width: 2.5, color: Colors.green) : null,
          boxShadow: const [
            BoxShadow(
              color: Color.fromRGBO(0, 0, 0, 0.25),
              blurRadius: 4.0, // soften the shadow
              spreadRadius: 2.0, //extend the shadow
              offset: Offset(
                0.0, // Move to right 10  horizontally
                0.0, // Move to bottom 10 Vertically
              ),
            )
          ]),
      child: Column(
        children: [
          const SizedBox(
            height: 4,
          ),
          Text(
            ca.name,
            style: const TextStyle(
                color: Color(0xFF7B7777), fontSize: 14, letterSpacing: 1),
          ),
          const Spacer(),
          Image(
            image: AssetImage(
              ca.image,
            ),
            fit: BoxFit.cover,
          )
        ],
      ),
    );
  }
}
