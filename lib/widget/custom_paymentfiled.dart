import 'package:flutter/material.dart';

class CustomPaymentFiled extends StatelessWidget {
  const CustomPaymentFiled({super.key, required this.txt1, this.last = false, required this.controller});
  final bool last;
  final String txt1;
  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          txt1,
          style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
        ),
        const SizedBox(
          width: 30,
        ),
        Expanded(
          flex: 2,
          child: Container(
            width: last ? 147 : 240,
            height: 44,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
            ),
            child: TextField(
              controller: controller,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                    borderSide: const BorderSide(
                      color: Color(0xffE4E6E8),
                      width: 1,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                    borderSide: const BorderSide(
                      color: Color(0xffE4E6E8),
                      width: 1,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                    borderSide: const BorderSide(
                      color: Color(0xffE4E6E8),
                      width: 1,
                    ),
                  ),
                  hintText: '0.00',
                  hintStyle: const TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                      fontWeight: FontWeight.w400)),
              textAlign: TextAlign.center,
              keyboardType: TextInputType.number,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ),
        last
            ? Expanded(
                flex: 1,
                child: Row(
                  children: [
                    const SizedBox(
                      width: 6,
                    ),
                    Expanded(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor:
                                const Color(0xff018AFE).withOpacity(.05),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(16),
                                side: const BorderSide(
                                    color: Color(0xff018AFE), width: 1))),
                        onPressed: () {
                          showBottomSheet(
                            context: context,
                            builder: (context) => Container(
                              height: MediaQuery.of(context).size.height * .5,
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 6, vertical: 12),
                              decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(16),
                                  topLeft: Radius.circular(16),
                                ),
                              ),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      const Text('بيانات الشيك'),
                                      IconButton(
                                        onPressed: () {
                                          Navigator.pop(context);
                                        },
                                        icon: const Icon(Icons.cancel),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          );
                        },
                        child: const Text('بيانات الشيك'),
                      ),
                    )
                  ],
                ),
              )
            : const SizedBox.shrink()
      ],
    );
  }
}
