import 'package:flutter/material.dart';
import 'package:wexo_ecommarce/const/size/size.dart';

class QuickAccess extends StatelessWidget {
  const QuickAccess({
    Key? key,
    required this.color,
    required this.labal,
    required this.icon,
  }) : super(key: key);

  final Color color;
  final String labal;
  final Widget icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        kHeight15,
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: color,
          ),
          height: MediaQuery.of(context).size.height / 16,
          width: MediaQuery.of(context).size.width / 8,
          child: icon,
        ),
        kHeight5,
        Text(labal),
      ],
    );
  }
}
