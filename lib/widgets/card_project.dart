import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CardProject extends StatefulWidget {
  const CardProject({Key? key}) : super(key: key);

  @override
  State<CardProject> createState() => _CardProjectState();
}

class _CardProjectState extends State<CardProject> {
  bool isShowMore = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(8)),
      child: Column(
        children: [
          Text(
            "Project",
            style: Theme.of(context).textTheme.bodyText1,
          ),
          const SizedBox(
            height: 16,
          ),
          Text(
            "Flutter Exploration App",
            style: Theme.of(context)
                .textTheme
                .subtitle1
                ?.copyWith(fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            "Introduction",
            style: Theme.of(context).textTheme.bodyText2,
          ),
          const SizedBox(
            height: 8,
          ),
          AspectRatio(
            aspectRatio: 3 / 1,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: CachedNetworkImage(
                imageUrl:
                    'https://i.natgeofe.com/n/affec7b0-50e5-416b-aa4d-50aabba73afa/arctic-fox_thumb_3x4.JPG',
                width: double.infinity,
                height: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Text(
            "The arctic fox is an incredibly hardy animal that can survive frigid Arctic temperatures as low as –58°F in the treeless lands where it makes its home. It has furry soles, short ears, and a short muzzle—all-important adaptations to the chilly clime. Arctic foxes live in burrows, and in a blizzard they may tunnel into the snow to create shelter.",
            maxLines: isShowMore ? null : 3,
            overflow: isShowMore ? null : TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.bodyText2,
          ),
          const SizedBox(
            height: 16,
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                isShowMore = !isShowMore;
              });
            },
            child: Align(
              alignment: Alignment.centerRight,
              child: Text(
                isShowMore ? "- Show Less" : "+ Show More",
                style: Theme.of(context)
                    .textTheme
                    .bodyText1
                    ?.copyWith(fontWeight: FontWeight.bold),
              ),
            ),
          )
        ],
      ),
    );
  }
}
