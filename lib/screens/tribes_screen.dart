import 'package:flutter/material.dart';
import 'package:roamad/constants/app_texts.dart';

import '../widgets/post_card_widget.dart';
import '../widgets/tribe_card_widget.dart';

class TribesScreen extends StatefulWidget {
  const TribesScreen({super.key});

  @override
  State<TribesScreen> createState() => _TribesScreenState();
}

class _TribesScreenState extends State<TribesScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          /// ***** Tribe Title ***** ///
         Row(
           crossAxisAlignment: CrossAxisAlignment.center,
           children: [
             SizedBox(
               width: 120,
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   Text(
                     AppText.tribesTitle,
                     style: Theme.of(context).textTheme.labelMedium,
                   ),
                   Divider(
                     color: Theme.of(context).primaryColor,
                   ),
                 ],
               ),
             ),
             Padding(
               padding: const EdgeInsets.only(bottom: 15),
               child: CircleAvatar(
                 radius: 20,
                 backgroundColor: Theme.of(context).primaryColor,
                 child:const  Icon(Icons.add,color: Colors.white,),
               ),
             )
           ],
         ),
          /// ***** Post List Section ***** ///
          ListView.builder(
              physics:const  NeverScrollableScrollPhysics(),
              itemCount: 10,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                /// ***** Tribe Post Widget ***** ///
                return const TribeCardWidget();
              })
        ],
      ),
    );
  }
}
