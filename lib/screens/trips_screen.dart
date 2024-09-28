import 'package:flutter/material.dart';
import 'package:roamad/constants/app_texts.dart';

import '../widgets/post_card_widget.dart';

class TripsScreen extends StatefulWidget {
  const TripsScreen({super.key});

  @override
  State<TripsScreen> createState() => _TripsScreenState();
}

class _TripsScreenState extends State<TripsScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          /// ***** Trip Title ***** ///
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Expanded(
                child: Text(
                  AppText.tripTitle,
                  style: Theme.of(context).textTheme.labelMedium,
                ),
              ),
              Icon(
                Icons.arrow_forward,
                color: Theme.of(context).primaryColor,
              )
            ],
          ),
          Divider(
            color: Theme.of(context).primaryColor,
          ),
          /// ***** Post List Section ***** ///
          ListView.builder(
            physics:const  NeverScrollableScrollPhysics(),
              itemCount: 10,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                /// ***** Post Widget ***** ///
                return const PostCardWidget();
              })
        ],
      ),
    );
  }
}
