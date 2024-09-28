import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
class VlogScreen extends StatelessWidget {
  const VlogScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
           Text("For You",style: TextStyle(color: Theme.of(context).primaryColor,fontSize: 18),),
          const SizedBox(height: 20,),

          CarouselSlider(
            options: CarouselOptions(
              viewportFraction: 0.9,
                height: 200.0),
            items: [1,2,3,4,5].map((i) {
              return Builder(
                builder: (BuildContext context) {
                  return Card(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                    child: SizedBox(
                        width: MediaQuery.of(context).size.width,

                        child: Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.amber,
                                  borderRadius: BorderRadius.circular(20)
                              ),
                            )
                          ],
                    )
                    ),
                  );
                },
              );
            }).toList(),
          )
        ],

      ),
    );
  }
}
