// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:learning_one/Data/Data.dart';
import 'package:learning_one/Screens/HomeMainScreen.dart';

class OnBoardScreen extends StatefulWidget {
  final int index;
  ScrollController controller;
  Function setStateFun;
  OnBoardScreen(
      {required this.index,
      required this.controller,
      required this.setStateFun});

  @override
  State<OnBoardScreen> createState() => _OnBoardScreenState();
}

class _OnBoardScreenState extends State<OnBoardScreen> {
  _OnBoardScreenState();
  // const OnBoradScreen({ Key? key }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var screen = MediaQuery.of(context).size;
    return Container(
      color: onBoardData[widget.index].primary,
      width: screen.width,
      child: Column(children: [
        Stack(children: <Widget>[
          Image(
            image: AssetImage(onBoardData[widget.index].image),
            height: 400,
          ),
          Positioned(
            height: 400,
            top: 0,
            left: 0,
            width: 600,
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  gradient: LinearGradient(colors: [
                    onBoardData[widget.index].gradientOne,
                    onBoardData[widget.index].gradientTwo
                  ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
            ),
          )
        ]),
        Container(
          // color: Colors.green,
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 50),
          // alignment: Alignment.,
          child: Column(
            crossAxisAlignment: widget.index == 0
                ? CrossAxisAlignment.center
                : CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 5,
              ),
              Text(
                onBoardData[widget.index].header,
                style: GoogleFonts.montserrat(
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 2,
                  color: onBoardData[widget.index].secondary,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                // lineHeight:30,
                onBoardData[widget.index].subHeader,
                style: GoogleFonts.montserrat(
                    height: 1.5,
                    letterSpacing: 1.2,
                    fontSize: 14,
                    fontWeight: FontWeight.w300,
                    color:
                        widget.index == 0 ? Colors.white : Color(0xFF999197)),
                textAlign:
                    widget.index == 0 ? TextAlign.center : TextAlign.start,
              )
            ],
          ),
        ),
        SizedBox(
          height: widget.index == 0 ? 220 : 180,
        ),
        Container(
          padding: EdgeInsets.all(20),
          // color: Colors.red,
          child: Column(
            //  color: Colors.green,

            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: TextButton(
                  style: TextButton.styleFrom(
                      padding:
                          EdgeInsets.symmetric(vertical: 8, horizontal: 20),
                      backgroundColor: onBoardData[widget.index].secondary,
                      minimumSize: const Size(500, 54)),
                  onPressed: widget.index == 3
                      ? () => Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => HomeMain()))
                      : () {
                          widget.controller.position
                              .jumpTo((widget.index + 1) * screen.width);
                          widget.setStateFun(widget.index + 1);
                        },
                  child: Container(
                    child: Text(
                      onBoardData[widget.index].buttonText,
                      style: GoogleFonts.montserrat(
                          letterSpacing: 2,
                          fontSize: 16,
                          color:
                              widget.index == 3 ? Colors.black : Colors.white,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: screen.width * 0.2,
                    // color: Colors.blue,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        cont(conti: 0, index: widget.index),
                        cont(conti: 1, index: widget.index),
                        cont(conti: 2, index: widget.index),
                        cont(conti: 3, index: widget.index)
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        )
      ]),
    );
  }
}

class cont extends StatelessWidget {
  final int conti;
  final int index;
  cont({required this.conti, required this.index});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 8,
        height: 8,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color:
              conti == index ? onBoardData[index].secondary : Color(0xFFBCB3B3),
        ));
  }
}
