import 'package:flutter/material.dart';

class CardDetails extends StatefulWidget {
  const CardDetails({Key? key}) : super(key: key);

  @override
  State<CardDetails> createState() => _CardDetails();
}

class _CardDetails extends State<CardDetails> {
  bool isShowText = true;

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
                  "Age",
                  style: Theme.of(context).textTheme.headline6,
                ),
                const SizedBox(
                  height: 12,
                ),
                Text(
                  "Up to 11 Years",
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
                  "Food",
                  style: Theme.of(context).textTheme.headline6,
                ),
                const SizedBox(
                  height: 12,
                ),
                GestureDetector(
                    onTap: (){
                      setState(() {
                        isShowText = !isShowText;
                      });
                    },
                    child: Text(
                      "Lemmings, voles, rodents, hares, birds, eggs, fish, carrion and in time of scarcity also eat their feces.",
                      maxLines: isShowText ? 2 : 6,
                      overflow: isShowText ? TextOverflow.ellipsis : TextOverflow.fade,
                      style: Theme.of(context).textTheme.bodyText2,
                    ))
              ],
            ))
      ],
    );
  }
}
