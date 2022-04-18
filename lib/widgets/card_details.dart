import 'package:flutter/material.dart';

class CardDetails extends StatelessWidget {
  const CardDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
            flex: 1,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Experience",
                  style: Theme.of(context).textTheme.headline6,
                ),
                const SizedBox(
                  height: 12,
                ),
                Text(
                  "1 Month",
                  style: Theme.of(context).textTheme.bodyText2,
                )
              ],
            )),
        Expanded(
            flex: 1,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Material",
                  style: Theme.of(context).textTheme.headline6,
                ),
                const SizedBox(
                  height: 12,
                ),
                Text(
                  "Flutter 2, Dart, Widgets, User Interface, Github, Android Studio, Windows",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.bodyText2,
                )
              ],
            ))
      ],
    );
  }
}
