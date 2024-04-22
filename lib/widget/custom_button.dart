import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
      height: 48,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: const Color(0xff1D3C70),
        borderRadius: BorderRadius.circular(16),
      ),
      child: const Text(
        'ايصال استلام نقديه',
        style: TextStyle(
          fontSize: 14,
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
