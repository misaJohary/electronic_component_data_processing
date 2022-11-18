import 'package:flutter/material.dart';

import '../widgets/body_widget.dart';
import '../widgets/header_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      backgroundColor: theme.backgroundColor,
      body: Column(
        children: [
          SizedBox(
            width: double.infinity,
            // height: 300,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                LogoWidget(),
                SizedBox(
                  width: 50,
                ),
                HeaderWidget()
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          const BodyWidget(),
        ],
      ),
    );
  }
}

class LogoWidget extends StatelessWidget {
  const LogoWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final primaryColor = theme.primaryColor;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 40.0, horizontal: 25),
      child: Column(
        children: [
          Icon(
            Icons.shopping_cart_rounded,
            color: primaryColor,
          ),
          Text(
            'E-shop',
            style: TextStyle(color: primaryColor),
          ),
        ],
      ),
    );
  }
}
