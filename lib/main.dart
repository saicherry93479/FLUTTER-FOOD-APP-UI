import 'package:flutter/material.dart';

import './Screens/Screens.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MaterialApp(
    home: MyApp(),
    debugShowCheckedModeBanner: false,
  ));

  // Customizing sttaus bar color and text (icon brightness )

  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarIconBrightness: Brightness.light,
  ));
}

// INTIAL PAGE    ###################

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // INTIALIZING SCROLL CONTROLLER TO HANDLE LISTVIEW SCROOL
  late ScrollController scrollcontroller;
  late int number;

  // WIDGET MOUNT METHOD INITSTATE
  @override
  void initState() {
    scrollcontroller = ScrollController();
    // AT MOUNT METHID WE ARE ADDING LISTENRE TO THE SCROLLCONTROLLER .NOW THIS LISTNER CAN ACESS SCROLL CONTROLLER
    scrollcontroller.addListener(scrollFun);
    super.initState();
    number = 1;
  }

  // MMETHOD  FOR HANDLING STATE OF VARIABLES

  @override
  void setState(VoidCallback fn) {
    // TODO: implement setState
    super.setState(fn);
  }

// USE FUL FOR UPDATION STATE FROM ONBOARD SCREEN WHICH ARE IN ANOTHER FILE THIS WILL BE PASSED AS PARAMETER

  void setStateFun(int numb) {
    setState(() {
      number = numb;
    });
  }

// WIDGET BUILD FUNCTION FOR RENDERING ##################
  @override
  Widget build(BuildContext context) {
    var a = MediaQuery.of(context).size;
    return Scaffold(
      // LIST VIEW FOR ONBORAD CURSUORAL SCREENS    ##########################
      body: ListView.builder(
          // CONTROLLER TO HANDLE THE SCROLL POSITION SCROLLCONTROLLER
          controller: scrollcontroller,
          scrollDirection: Axis.horizontal,
          itemCount: 4,

          // HERE WE ARE PASSING ONBORAD WIDGET FROM ANOTHER FILE AND PASSING INDEX SCROLLCONTROLLER TO UPDATE STATE
          itemBuilder: (context, index) => OnBoardScreen(
              index: index,
              controller: scrollcontroller,
              setStateFun: setStateFun)),
    );
  }

// LISTENER FOR SCROLL CONTROLLER
  void scrollFun() async {
// IF WE SCROLLED AN OFFSET ABOVE 50 IT WILL SCROLL TO ANOTHER PAGE IN (FORWARD DIRECTION)

    if (scrollcontroller.position.userScrollDirection.index == 2) {
      if ((scrollcontroller.offset < MediaQuery.of(context).size.width * 4) &&
          (scrollcontroller.offset % MediaQuery.of(context).size.width > 50)) {
            // JUMP TO FUNCTION USEFUL IN MOVING TO SPECIFIED OFFSET
        scrollcontroller.jumpTo(number * MediaQuery.of(context).size.width);
        setState(() {
          if (number < 3) {
            number++;
          }
        });
      }
    }
// IF WE SCROLLED AN OFFSET ABOVE 50 IT WILL SCROLL TO ANOTHER PAGE (BACKWARD DIRECTION)
    if (scrollcontroller.position.userScrollDirection.index == 1) {
      if ((scrollcontroller.offset < MediaQuery.of(context).size.width * 4) &&
          (scrollcontroller.offset % MediaQuery.of(context).size.width <
              MediaQuery.of(context).size.width - 50)) {
        scrollcontroller
            .jumpTo((number - 1) * MediaQuery.of(context).size.width);
        setState(() {
          if (number < 4 && number > 1) {
            number--;
          }
        });
      }
    }
  }
}
