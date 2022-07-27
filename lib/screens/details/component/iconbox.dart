import 'package:flutter/material.dart';

import '../../../constant.dart';

class IconBox extends StatelessWidget {
  const IconBox({
    Key? key,
    required this.icon,
  }) : super(key: key);

  final IconData icon;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      margin: EdgeInsets.symmetric(
          vertical: size.height * 0.03, horizontal: kDefaultPadding / 4),
      padding: const EdgeInsets.all(kDefaultPadding / 2),
      height: 60,
      width: 60,
      // color: Colors.green,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(6),
        boxShadow: [
          // BoxShadow(
          //   offset: const Offset(0, 15),
          //   blurRadius: 22,
          //   color: kPrimaryColor.withOpacity(0.22),
          // ),
          // const BoxShadow(
          //   offset: Offset(-15, -15),
          //   blurRadius: 20,
          //   color: Colors.white,
          // ),
        ],
      ),
      child: Center(
          child: Icon(
        icon,
        color: kPrimaryColor,
      )),
    );
  }
}
