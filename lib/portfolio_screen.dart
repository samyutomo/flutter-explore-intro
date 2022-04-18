import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_explore_intro/widgets/card_portfolio.dart';

class PortfolioScreen extends StatelessWidget {
  const PortfolioScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          const Positioned(bottom: 16, left: 16, right: 16, child: CardPortfolio())
        ],
      ),
    );
  }
}
