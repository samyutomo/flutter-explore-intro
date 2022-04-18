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
              children: [
                Text(
                  "experience",
                  style: Theme
                      .of(context)
                      .textTheme
                      .bodyText2,),
                const SizedBox(height: 12,),
                Text("1 Month",
                  style: Theme
                      .of(context)
                      .textTheme
                      .bodyText2,)
              ],
            )),
        Expanded(
            child: Column(
              children: [
                Text("material",
                  style: Theme
                      .of(context)
                      .textTheme
                      .bodyText2,),
                const SizedBox(height: 12,),
                Text("Flutter 2, Dart, Widgets, User Interface, Github",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: Theme
                      .of(context)
                      .textTheme
                      .bodyText2,)
              ],
            ))
      ],
    );
  }

}