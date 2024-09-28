import 'package:flutter/material.dart';

import '../constants/app_texts.dart';

class TribeCardWidget extends StatelessWidget {
  const TribeCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        color: Colors.white,
        elevation: 5,
        child: Container(
          padding: const EdgeInsets.all(15),
          height: 320,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 130,
                width: double.infinity,
                padding:const  EdgeInsets.only(top: 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    /// ***** Post Image ***** ///
                    image: const DecorationImage(
                        image: AssetImage("images/tribe.jpg"),
                        fit: BoxFit.fill)),
                alignment: Alignment.topRight,
                child: Container(
                  height: 35,
                  width: 90,
                  decoration:  BoxDecoration(
                    color: Colors.grey.shade400,
                    borderRadius:const  BorderRadius.horizontal(left: Radius.circular(20)),

                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "8th",
                        style: Theme.of(context)
                            .textTheme
                            .labelMedium,

                      ),
                      Text(
                        "March",
                        style: Theme.of(context).textTheme.labelMedium,
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),

              /// ***** Title ***** ///
              Text(
                "Biking Mumbai to Goa",
                style: Theme.of(context).textTheme.titleMedium,
              ),

              /// ***** User Details ***** ///
              ListTile(
                contentPadding: EdgeInsets.zero,
                leading: const CircleAvatar(
                  radius: 20,
                  backgroundImage: AssetImage("assets/profile_img.jpeg"),
                ),
                title: Text(
                  "Sajid Ahmed",
                  style: Theme.of(context).textTheme.labelSmall,
                ),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Host/Traveller",
                      style: Theme.of(context)
                          .textTheme
                          .labelSmall
                          ?.copyWith(color: Colors.grey.shade600, fontSize: 10),
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.location_on_outlined,
                          size: 15,
                        ),
                        Text(
                          "Mumbai",
                          style: Theme.of(context)
                              .textTheme
                              .labelSmall
                              ?.copyWith(
                                  color: Colors.grey.shade600, fontSize: 10),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(children: [
                    Stack(
                      children: [
                        Container(
                          width: 80,
                        ),
                        const CircleAvatar(
                          radius: 15,
                          backgroundImage:
                              AssetImage("assets/profile_img.jpeg"),
                        ),
                        const Positioned(
                          left: 20,
                          child: CircleAvatar(
                            radius: 15,
                            backgroundImage:
                                AssetImage("assets/profile_img.jpeg"),
                          ),
                        ),
                        const Positioned(
                          left: 40,
                          child: CircleAvatar(
                            radius: 15,
                            backgroundImage:
                                AssetImage("assets/profile_img.jpeg"),
                          ),
                        ),
                      ],
                    ),
                  ]),
                  CircleAvatar(
                    radius: 15,
                    backgroundColor: Colors.blue.shade100,
                    child: const Text(
                      "+11",
                      style: TextStyle(fontSize: 9, color: Colors.blue),
                    ),
                  ),
                  const Spacer(),

                  /// ***** Join Section ***** ///
                  Card(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    child: Container(
                      height: 40,
                      width: 120,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            AppText.showInterest,
                            style: Theme.of(context)
                                .textTheme
                                .labelSmall
                                ?.copyWith(fontSize: 6),
                          ),
                          Text(
                            AppText.join,
                            style: Theme.of(context).textTheme.labelSmall,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
