import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget with PreferredSizeWidget {
  const MyAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      centerTitle: true,
      leading: Center(
          child: Padding(
        padding: const EdgeInsets.only(left: 7.0),
        child: Text(
          'AZ GOLD',
          style: TextStyle(color: Colors.black),
        ),
      )),
      title: Text('Top-Up Wallet', style: TextStyle(color: Colors.black)),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 18.0),
          child: Center(
              child: Text('Skip', style: TextStyle(color: Colors.black))),
        )
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
