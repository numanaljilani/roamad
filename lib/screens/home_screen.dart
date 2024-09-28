import 'package:flutter/material.dart';

import '../constants/app_texts.dart';
class HomeScreen1 extends StatelessWidget {
  const HomeScreen1({super.key});

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
         Divider(color: Theme.of(context).primaryColor,),
         const  SizedBox(height: 10,),
          Container(
            padding:const  EdgeInsets.symmetric(horizontal: 20,vertical: 5),
            height: 65,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade300,
                  blurRadius: 15
                ),
              ]
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Transform.rotate(
                    angle: 1,
                    child: const Icon(Icons.navigation_outlined,size: 30,)),
                const SizedBox(width: 10,),
                Expanded(child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                   const  Text("Where ?"),
                    Expanded(child: TextFormField(
                      scrollPadding: EdgeInsets.zero,
                      decoration:const InputDecoration(
                        hintText: "Bali-Paris-Maimi",
                          hintStyle: TextStyle(color: Colors.grey,fontSize: 12),
                          contentPadding: EdgeInsets.zero,
                        border: InputBorder.none
                      ),
                    ))
                  ],
                ))
              ],
            ),
          ),
         const  SizedBox(height: 20,),
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
                        BoxShadow(
                            color: Colors.grey.shade300,
                            blurRadius: 15
                        ),
                      ]
                  ),
                  child:const  Row(
                    children: [
                      Icon(Icons.location_on_outlined,size: 25,),
                      SizedBox(width: 10,),
                     Expanded(child: Center(child:  Text("From"),))
                    ],
                  ),
                
                ),
              ),
              const SizedBox(width: 20,),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  height: 50,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.shade300,
                            blurRadius: 15
                        ),
                      ]
                  ),
                  child:const  Row(
                    children: [
                      Icon(Icons.calendar_today_sharp,size: 20,),
                      SizedBox(width: 10,),
                      Expanded(child: Center(child:  Text("When"),))
                    ],
                  ),

                ),
              )
            ],
          ),
          const SizedBox(height: 20,),
          Text("Type"),
        ],
      ),
    );
  }
}
