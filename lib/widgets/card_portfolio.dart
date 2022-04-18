import 'package:flutter/material.dart';
import 'package:flutter_explore_intro/portfolio_details_screen.dart';
import 'package:flutter_explore_intro/widgets/card_details.dart';
import 'package:flutter_explore_intro/widgets/icon_with_text.dart';

class CardPortfolio extends StatelessWidget {
  const CardPortfolio({Key? key}) : super(key: key);

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
            "Samy Utomo",
            style: Theme.of(context)
                .textTheme
                .headline5
                ?.copyWith(fontWeight: FontWeight.w600),
          ),
          const SizedBox(
            height: 16,
          ),
          Row(
            children: [
              Expanded(
                  child: Column(
                children: const [
                  IconWithText(
                      iconData: Icons.work_outline_rounded,
                      text: "Flutter Explorer"),
                  SizedBox(
                    height: 12,
                  ),
                  IconWithText(
                      iconData: Icons.email_outlined,
                      text: "dev.samyutomo@gmail.com")
                ],
              )),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const PortfolioDetailsScreen()));
                  },
                  child: const Text("See Works"))
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          const CardDetails()
        ],
      ),
    );
  }
}
