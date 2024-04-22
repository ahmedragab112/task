import 'package:flutter/material.dart';
import 'package:task/widget/custom_paymentfiled.dart';

class CustomerData extends StatelessWidget {
  const CustomerData(
      {super.key, required this.controller1, required this.controller2});
  final TextEditingController controller1;

  final TextEditingController controller2;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: const Color(0xffF3F3F3),
      ),
      height: 192,
      padding: const EdgeInsets.all(12),
      child: Column(
        children: [
          ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xff777777),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16)),
              ),
              child: const Text(
                'بيانات العميل',
                style: TextStyle(
                  color: Colors.white,
                ),
              )),
          const SizedBox(
            height: 16,
          ),
          CustomPaymentFiled(
            txt1: 'الرصيد السابق',
            controller: controller1,
          ),
          const SizedBox(
            height: 16,
          ),
          CustomPaymentFiled(
            txt1: 'الرصيد الحالي',
            controller: controller2,
          )
        ],
      ),
    );
  }
}
