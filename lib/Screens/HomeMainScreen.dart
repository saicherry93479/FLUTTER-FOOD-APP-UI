import 'package:flutter/material.dart';
import 'package:learning_one/Screens/Screens.dart';

List<Widget> screens = [
  HomeScreen(),
  SearchScreen(),
  CartScreen(),
  PaymentScreen()
];

class HomeMain extends StatefulWidget {
  const HomeMain({Key? key}) : super(key: key);

  @override
  State<HomeMain> createState() => _HomeMainState();
}

class _HomeMainState extends State<HomeMain> {
  late int inde = 0;
  void tapped(int index) {
    setState(() {
      inde = index;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
 

//  methid returns BARNAVIGATIONBARITEM  

  BottomNavigationBarItem barItemBottom(IconData icon) {
    return BottomNavigationBarItem(
        icon: Icon(icon),
        label: "",
        activeIcon: Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40), color: Colors.green),
            child: Icon(
              icon,
              color: Colors.white,
            )));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,

        // BOTTOM NAVIGATIONBAR ##################

        bottomNavigationBar: BottomNavigationBar(
          iconSize: 30,
          // TAP FUNCTION FOR UPDATIONG STATE 
          onTap: tapped,
          // *****IMPORTANT ********** BASED ON THE SPECIFIED CURRENT INDE THE ICON WILL UPDATES
          currentIndex: inde,
          fixedColor: Colors.white,
          items: [
            barItemBottom(Icons.home),
            barItemBottom(Icons.search),
            barItemBottom(Icons.shopping_cart),
            barItemBottom(Icons.payment),
          ],
          type: BottomNavigationBarType.fixed,
        ),
        // TERENARY CONDITION FOR SHOWING APP BAR IN HOME SCREEN ONLY

        appBar: inde == 0
            ? AppBar(
                leading: Container(
                  margin: const EdgeInsets.only(left: 10),
                  child:const  Image(image: AssetImage("assets/images/MenuIcon.png")),
                ),
                backgroundColor: Colors.white,
                elevation: 0,
                actions: [
                  Container(
                    margin: const EdgeInsets.only(right: 10),
                    child: const CircleAvatar(
                      radius: 20,
                      backgroundImage: AssetImage("assets/images/profile.jpg"),
                    ),
                  )
                ],
              )
            : null,
            // DISPLAYING THE SCREENS BASED ON STATE UPDATION  #############################
        body: screens[inde]);
  }
}
