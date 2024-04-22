import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class PaymentIdAndDate extends StatelessWidget {
  const PaymentIdAndDate({super.key, required this.txt1, required this.txt2});
  final String txt1;
  final String txt2;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          txt1,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
        ),
        SizedBox(
          width: 100,
          child: Text(
            txt2,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    );
  }
}
