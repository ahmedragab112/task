import 'package:flutter/material.dart';
import 'package:task/widget/custom_paymentfiled.dart';

class PaymentWayWidget extends StatelessWidget {
  const PaymentWayWidget(
      {super.key,
      required this.controller1,
      required this.controller2,
      required this.controller3});
  final TextEditingController controller1;
  final TextEditingController controller2;
  final TextEditingController controller3;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 240,
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: const Color(0xffF3F3F3),
      ),
      child: Column(
        children: [
          const Text(
            'طريقه الدفع',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 24,
          ),
          CustomPaymentFiled(
            txt1: 'كاش',
            controller: controller1,
          ),
          const SizedBox(
            height: 8,
          ),
          CustomPaymentFiled(
            txt1: 'فيزا',
            controller: controller2,
          ),
          const SizedBox(
            height: 8,
          ),
          CustomPaymentFiled(
            txt1: 'شيك',
            last: true,
            controller: controller3,
          ),
        ],
      ),
    );
  }
}
