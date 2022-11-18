import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final primaryColor = theme.primaryColor;
    return Expanded(
        child: Container(
      padding: const EdgeInsets.only(top: 30, bottom: 30, left: 10, right: 50),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(20),
        ),
        boxShadow: [
          BoxShadow(
            color: primaryColor,
            // offset: Offset(3, 3),
            blurRadius: 10,
            spreadRadius: 0.1,
          )
        ],
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Dashboard',
                  style: TextStyle(
                    color: primaryColor,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  DateFormat('EEEE, MMMM d, y').format(DateTime.now()),
                  style: theme.textTheme.caption,
                ),
              ],
            ),
          ),
          const Spacer(
            flex: 2,
          ),
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search...',
                suffixIcon: FloatingActionButton(
                  onPressed: () {},
                  child: const Padding(
                    padding: EdgeInsets.symmetric(vertical: 12),
                    child: Icon(
                      Icons.search,
                      // size: 30,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
