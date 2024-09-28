import 'package:flutter/material.dart';

import '../constants/app_texts.dart';
import '../widgets/choice_chip_widget.dart';

class HomeScreen1 extends StatefulWidget {
  const HomeScreen1({super.key});

  @override
  State<HomeScreen1> createState() => _HomeScreen1State();
}

class _HomeScreen1State extends State<HomeScreen1> {
  String? _selectedTravelType;
  String? _selectedBudget;
  String? _selectedGroup;
  List<String> travelList = ["Adventure", "Chill", "Business", "Other"];
  List<String> budgetList = ["Economy", "Standard", "Luxury",];
  List<String> planList = ["Family", "Friends", "Solo",];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            AppText.homeTitle,
            style: Theme.of(context).textTheme.titleSmall,
          ),
          Divider(
            color: Theme.of(context).primaryColor,
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            height: 65,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
                boxShadow: [
                  BoxShadow(color: Colors.grey.shade300, blurRadius: 15),
                ]),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Transform.rotate(
                    angle: 1,
                    child: const Icon(
                      Icons.navigation_outlined,
                      size: 30,
                    )),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Where ?"),
                    Expanded(
                        child: TextFormField(
                      scrollPadding: EdgeInsets.zero,
                      decoration: const InputDecoration(
                          hintText: "Bali-Paris-Maimi",
                          hintStyle:
                              TextStyle(color: Colors.grey, fontSize: 12),
                          contentPadding: EdgeInsets.zero,
                          border: InputBorder.none),
                    ))
                  ],
                ))
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  height: 50,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(color: Colors.grey.shade300, blurRadius: 15),
                      ]),
                  child: const Row(
                    children: [
                      Icon(
                        Icons.location_on_outlined,
                        size: 25,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                          child: Center(
                        child: Text("From"),
                      ))
                    ],
                  ),
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  height: 50,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(color: Colors.grey.shade300, blurRadius: 15),
                      ]),
                  child: const Row(
                    children: [
                      Icon(
                        Icons.calendar_today_sharp,
                        size: 20,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                          child: Center(
                        child: Text("When"),
                      ))
                    ],
                  ),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          const Text("Type"),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            height:60,
            child: ListView(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              children: [
                for (int i = 0; i < travelList.length; i++) ...[
                  Center(
                    child: ChoiceChipWidget(
                      onTap: () {
                        setState(() {
                          _selectedTravelType = travelList[i];
                        });
                      },
                      selectedValue: _selectedTravelType,
                      label: travelList[i],
                    ),
                  ),
                ],
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text("Budget"),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            height:60,
            child: ListView(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              children: [
                for (int i = 0; i < budgetList.length; i++) ...[
                  Center(
                    child: ChoiceChipWidget(
                      onTap: () {
                        setState(() {
                          _selectedBudget = budgetList[i];
                        });
                      },
                      selectedValue: _selectedBudget,
                      label: budgetList[i],
                    ),
                  ),
                ],
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text("Plan with"),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            height:60,
            child: ListView(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              children: [
                for (int i = 0; i < planList.length; i++) ...[
                  Center(
                    child: ChoiceChipWidget(
                      onTap: () {
                        setState(() {
                          _selectedGroup = planList[i];
                        });
                      },
                      selectedValue: _selectedGroup,
                      label: planList[i],
                    ),
                  ),
                ],
              ],
            ),
          ),
          const SizedBox(height: 20,),
         GestureDetector(
           onTap: (){},
           child: Container(
             height: 50,
             width: double.infinity,
             decoration: BoxDecoration(
               borderRadius: BorderRadius.circular(10),
               color: Theme.of(context).primaryColor
             ),
             alignment: Alignment.center,
             child:const  Text("Plan",style: TextStyle(color: Colors.white,fontSize: 18),),
           ),
         ),
          const SizedBox(height: 20,),
          Row(
            children: [
              Expanded(
                child: Container(
                  padding:const EdgeInsets.all(20),
                  height: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Theme.of(context).primaryColor.withOpacity(0.5)
                  ),
                  alignment: Alignment.center,
                  child: Text("Plan with Text",style: Theme.of(context).textTheme.titleLarge?.copyWith(color: Colors.white),),
                ),
              ),
             const  SizedBox(width: 20,),
              Expanded(
                child: Container(
                  padding:const EdgeInsets.all(20),
                  height: 150,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Theme.of(context).primaryColor.withOpacity(0.5)
                  ),
                  alignment: Alignment.center,
                  child: Text("Surprise Me",style: Theme.of(context).textTheme.titleLarge?.copyWith(color: Colors.white),),
                ),
              )
            ],
          ),

        ],
      ),
    );
  }
}


