import 'package:flutter/material.dart';

import 'body_widget/content_widget.dart';

class BodyWidget extends StatelessWidget {
  const BodyWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: const [
          DrawerWidget(),
          SizedBox(
            width: 50,
          ),
          Expanded(child: ContentWidget()),
        ],
      ),
    );
  }
}

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final primaryColor = theme.primaryColor;
    const iconSpacing = 15.0;
    const iconSize = 25.0;
    return Container(
      height: double.infinity,
      width: 100,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.only(
            topRight: Radius.circular(10),
            bottomRight: Radius.circular(10),
          ),
          boxShadow: [
            BoxShadow(
                color: primaryColor,
                // offset: Offset(3, 3),
                blurRadius: 10,
                spreadRadius: 0.1)
          ]),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 30,
          ),
          IconDrawer(
            icon: Icons.home_rounded,
            isSelected: true,
            onPressed: () {},
          ),
          IconDrawer(
            icon: Icons.person,
            onPressed: () {},
          ),
          IconDrawer(
            icon: Icons.star_rounded,
            onPressed: () {},
          ),
          const Spacer(),
          IconDrawer(
            icon: Icons.settings,
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}

class IconDrawer extends StatelessWidget {
  const IconDrawer({
    Key? key,
    this.isSelected = false,
    required this.icon,
    required this.onPressed,
  }) : super(key: key);

  final bool? isSelected;
  final IconData icon;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final primaryColor = theme.primaryColor;
    const iconSpacing = 15.0;
    const iconSize = 25.0;
    if (!isSelected!) {
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: iconSpacing),
        child: IconButton(
          onPressed: onPressed,
          icon: Icon(
            icon,
            color: primaryColor,
            size: iconSize,
          ),
        ),
      );
    }
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: iconSpacing),
      child: Row(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(color: primaryColor.withOpacity(0.2)),
              child: IconButton(
                onPressed: onPressed,
                icon: Icon(
                  icon,
                  color: primaryColor,
                  size: iconSize,
                ),
              ),
            ),
          ),
          Container(
            width: 3,
            height: 38,
            color: primaryColor,
            child: const Text(''),
          )
        ],
      ),
    );
  }
}
