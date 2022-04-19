import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_explore_intro/widgets/icon_with_text.dart';

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
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(8)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Project",
            style: Theme.of(context).textTheme.headline6,
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            "Flutter Exploration App",
            style: Theme.of(context).textTheme.subtitle1?.copyWith(
                color: Colors.deepPurple, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            "Introduction",
            style: Theme.of(context).textTheme.bodyText2,
          ),
          const SizedBox(
            height: 16,
          ),
          AspectRatio(
            aspectRatio: 2 / 1,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: CachedNetworkImage(
                imageUrl:
                    'https://www.discoverimages.com/p/251/arctic-fox-alopex-lagopus-billenfjorden-19350208.jpg',
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
            height: 10,
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                isShowMore = !isShowMore;
              });
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                isShowMore
                    ? const IconWithText(
                        iconData: Icons.arrow_drop_up, text: "Show Less")
                    : const IconWithText(
                        iconData: Icons.arrow_drop_down, text: "Show More"),
              ],
            ),
          )
        ],
      ),
    );
  }
}
