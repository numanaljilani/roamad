import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class TrendingScreen extends StatelessWidget {
  const TrendingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MasonryGridView.builder(
      padding: const EdgeInsets.all(10),
      shrinkWrap: true,
      itemCount: 20,
      mainAxisSpacing: 2,
      crossAxisSpacing: 2,
      gridDelegate:
      const SliverSimpleGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (context, index) {
        return ClipRRect(
          borderRadius: BorderRadius.circular(10),
            child: Image.asset("images/post.jpg"));
      },

    );
  }
}
