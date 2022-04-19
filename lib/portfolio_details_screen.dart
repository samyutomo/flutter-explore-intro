import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_explore_intro/widgets/card_project.dart';

class PortfolioDetailsScreen extends StatelessWidget {
  const PortfolioDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("My Portfolio"),
      ),
      body: Stack(
        children: [
          CachedNetworkImage(
            imageUrl:
                'https://w0.peakpx.com/wallpaper/292/198/HD-wallpaper-arctic-fox-white-snow-animal-thumbnail.jpg',
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover,
            color: Colors.grey,
            colorBlendMode: BlendMode.saturation,
          ),
          ListView.separated(
              padding: const EdgeInsets.all(16),
              itemBuilder: (context, index) => const CardProject(),
              separatorBuilder: (context, index) => const SizedBox(height: 25),
              itemCount: 6)
        ],
      ),
    );
  }
}
