import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class PortfolioDetailsScreen extends StatelessWidget{
  const PortfolioDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext  context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "My Portfolio"
        ),
      ),
      body: Stack(
        children: [
          CachedNetworkImage(imageUrl: 'https://www.discoverimages.com/p/251/arctic-fox-alopex-lagopus-billenfjorden-19350208.jpg',
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.cover,
          color: Colors.grey,
          colorBlendMode: BlendMode.saturation,),
          ListView.separated(
              itemBuilder: (context, index) {

              },
              separatorBuilder: (context, index) => const SizedBox(height: 16,),
              itemCount: 6)
        ],
      ),
    )
  }
  
}