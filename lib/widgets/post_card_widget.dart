import 'package:flutter/material.dart';

import '../constants/app_texts.dart';

class PostCardWidget extends StatelessWidget {
  const PostCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      margin: const EdgeInsets.only(top: 10),
      height: 250,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          /// ***** Post Image ***** ///
          image: const DecorationImage(
              image: AssetImage("images/post.jpg"), fit: BoxFit.fill)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              /// ***** Agency Name ***** ///
              Container(
                padding: const EdgeInsets.all(5),
                height: 40,
                width: 120,
                decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(30)),
                child: Row(
                  children: [
                    const CircleAvatar(),
                    Expanded(
                        child: Text(
                      "HCAMP",
                      style: Theme.of(context)
                          .textTheme
                          .labelMedium
                          ?.copyWith(color: Colors.white),
                    ))
                  ],
                ),
              ),
              /// ***** Like Button ***** ///
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.favorite_border,
                    size: 30,
                    color: Colors.white,
                  ))
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              /// ***** Location ***** ///
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Kerala",
                    style: Theme.of(context)
                        .textTheme
                        .titleLarge
                        ?.copyWith(color: Colors.white),
                  ),
                  /// ***** Time ***** ///
                  Text(
                    "May 12",
                    style: Theme.of(context)
                        .textTheme
                        .labelLarge
                        ?.copyWith(color: Colors.white),
                  ),
                ],
              ),
              /// ***** More Details Section ***** ///
              Container(
                height: 40,
                width: 120,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "\$123",
                      style: Theme.of(context).textTheme.labelSmall,
                    ),
                    Text(
                      AppText.moreDetails,
                      style: Theme.of(context).textTheme.labelSmall,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
