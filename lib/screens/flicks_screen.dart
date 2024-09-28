import 'package:flutter/material.dart';
import 'package:roamad/screens/trending_screen.dart';
import 'package:roamad/screens/vlog_screen.dart';

class FlicksScreen extends StatefulWidget {
  const FlicksScreen({super.key});

  @override
  State<FlicksScreen> createState() => _FlicksScreenState();
}

class _FlicksScreenState extends State<FlicksScreen> {
  List<String> menuList = ["Trending", "Flicks", "Vlogs"];
  String _selectedMenu = "Flicks";
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            margin: const EdgeInsets.only(top: 10),
            height: 40,
            width: 270,
            decoration: BoxDecoration(
                border: Border.all(), borderRadius: BorderRadius.circular(30)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                for (int i = 0; i < menuList.length; i++) ...[
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        _selectedMenu = menuList[i];
                      });
                    },
                    child: Container(
                      height: 40,
                      width: 240 / 3,
                      decoration: BoxDecoration(
                          color: _selectedMenu == menuList[i]
                              ? Theme.of(context).primaryColor
                              : Colors.white,
                          borderRadius: BorderRadius.circular(30)),
                      alignment: Alignment.center,
                      child: Text(
                        menuList[i],
                        style: Theme.of(context).textTheme.labelSmall?.copyWith(
                            color: _selectedMenu == menuList[i]
                                ? Colors.white
                                : Colors.black),
                      ),
                    ),
                  )
                ]
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Expanded(
            child: _selectedMenu == "Trending"
                ? const TrendingScreen()
                : _selectedMenu == "Vlogs"
                    ? const VlogScreen()
                    :const  SizedBox())
      ],
    );
  }
}
