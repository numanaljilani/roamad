import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:roamad/screens/flicks_screen.dart';
import 'package:roamad/screens/tribes_screen.dart';
import 'package:roamad/screens/trips_screen.dart';
import '../constants/app_texts.dart';
import 'home_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  List<MenuItem> menuOptionList = [
    MenuItem(title: "Plan", icon: "assets/icons/map.png"),
    MenuItem(title: "Trips", icon: "assets/icons/Explore.png"),
    MenuItem(title: "", icon: "assets/icons/F.png"),
    MenuItem(title: "Tribes", icon: "assets/icons/Tribes.png"),
    MenuItem(title: "My Trip", icon: "assets/icons/Graph.png")
  ];
  int selectedIndex=0;
  List<Widget>screens=[HomeScreen1(),TripsScreen(),FlicksScreen(),TribesScreen(),SizedBox()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.white,
        centerTitle: false,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Text(AppText.title, style: Theme.of(context).textTheme.labelLarge),
            Row(
              children: [
                Text(
                  "R",
                  style: GoogleFonts.kronaOne(
                      textStyle:const  TextStyle(color: Color(0xFFFF5475))),
                ),
                Text(
                  "omad.Ai",
                  style: Theme.of(context).textTheme.labelLarge),

              ],
            ),
            Text(
              AppText.subtitle,
              style: Theme.of(context).textTheme.labelSmall,
            ),
          ],
        ),
        actions: const [
          CircleAvatar(
            radius: 20,
            backgroundImage: AssetImage("assets/profile_img.jpeg"),
          ),
          SizedBox(
            width: 10,
          ),
        ],
      ),

      body: screens[selectedIndex],
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).primaryColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
        onPressed: () {
          setState(() {
            selectedIndex=2;
          });
        },
        child:selectedIndex==2?const Icon(Icons.add,color: Colors.white,size: 35,): Image.asset("assets/icons/F.png"),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),

        color: Colors.white,
        notchMargin: 5,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            for (int i = 0; i < menuOptionList.length; i++) ...[
              i == 2
                  ? const SizedBox(width: 20,)
                  : GestureDetector(
                onTap: (){
                  setState(() {
                    selectedIndex=i;
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(menuOptionList[i].icon,color: selectedIndex==i?Theme.of(context).primaryColor : null ,),
                    const SizedBox(height: 5,),
                    Text(menuOptionList[i].title,style: Theme.of(context).textTheme.labelSmall?.copyWith(color: selectedIndex==i?Theme.of(context).primaryColor : null ,),)
                  ],
                ),
              )
            ]
          ],
        ),
      ),
    );
  }
}

class MenuItem {
  final String icon;
  final String title;
  MenuItem({required this.title, required this.icon});
}
