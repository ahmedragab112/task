import 'package:flutter/material.dart';
import 'package:task/model/payment_model.dart';
import 'package:task/payment_done.dart';
import 'package:task/widget/custom_button.dart';
import 'package:task/widget/customer_data.dart';
import 'package:task/widget/data_row.dart';
import 'package:task/widget/notes_textfiled.dart';
import 'package:task/widget/payment_way.dart';

class PaymentCollection extends StatefulWidget {
  const PaymentCollection({super.key});

  @override
  State<PaymentCollection> createState() => _PaymentCollectionState();
}

class _PaymentCollectionState extends State<PaymentCollection> {
  List<String> names = ['محمد حسن', 'احمد رجب', 'ياسر احمد'];

  String? value;
  TextEditingController totalController = TextEditingController();
  TextEditingController cachController = TextEditingController();
  TextEditingController visaController = TextEditingController();
  TextEditingController chekController = TextEditingController();
  TextEditingController notesController = TextEditingController();
  TextEditingController previousBalanceController = TextEditingController();
  TextEditingController currentBalanceController = TextEditingController();

  String id = '1000';
  String date = '14-3-2023';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('تحصيل دفعه'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 12,
        ),
        child: Column(
          children: [
            Expanded(
              child: CustomScrollView(
                slivers: [
                  const SliverToBoxAdapter(
                    child: SizedBox(
                      height: 25,
                    ),
                  ),
                  const SliverToBoxAdapter(
                    child: CustomButton(),
                  ),
                  const SliverToBoxAdapter(
                    child: SizedBox(
                      height: 32,
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: PaymentIdAndDate(
                      txt1: 'رقم الحركه',
                      txt2: id,
                    ),
                  ),
                  const SliverToBoxAdapter(
                    child: SizedBox(
                      height: 16,
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: PaymentIdAndDate(
                      txt1: 'التاريخ',
                      txt2: date,
                    ),
                  ),
                  const SliverToBoxAdapter(
                    child: SizedBox(
                      height: 16,
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: Row(
                      children: [
                        const Text(
                          'اسم العميل',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w400),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Expanded(
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 24, vertical: 8),
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              border: Border.all(
                                color: const Color(0xffE4E6E8),
                                width: 1,
                              ),
                            ),
                            child: DropdownButton(
                              icon: const Icon(Icons.keyboard_arrow_down),
                              hint: const Text(
                                'اختر',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xffBBBBBB),
                                ),
                              ),
                              isExpanded: true,
                              borderRadius: BorderRadius.circular(16),
                              elevation: 0,
                              value: value,
                              iconDisabledColor: Colors.grey,
                              iconEnabledColor: const Color(0xff36517E),
                              items: names
                                  .map(
                                    (e) => DropdownMenuItem<String>(
                                      value: e,
                                      child: Text(e),
                                    ),
                                  )
                                  .toList(),
                              onChanged: (value) {
                                this.value = value;
                                setState(() {});
                              },
                              disabledHint: const Text('محمد حسن'),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SliverToBoxAdapter(
                    child: SizedBox(
                      height: 16,
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: Row(
                      children: [
                        const Text(
                          'المبلغ المدفوع',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w400),
                        ),
                        const SizedBox(
                          width: 6,
                        ),
                        Expanded(
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 24, vertical: 10),
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              border: Border.all(
                                color: const Color(0xffE4E6E8),
                                width: 1,
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(
                                  width: 150,
                                  child: TextField(
                                    controller: totalController,
                                    decoration: const InputDecoration(
                                      border: InputBorder.none,
                                      hintText: 'ادخل المبلغ',
                                      hintStyle: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xffBBBBBB),
                                      ),
                                    ),
                                  ),
                                ),
                                const Text(
                                  'ج . م',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                  ),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  const SliverToBoxAdapter(
                    child: SizedBox(
                      height: 32,
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: PaymentWayWidget(
                      controller1: cachController,
                      controller2: visaController,
                      controller3: chekController,
                    ),
                  ),
                  const SliverToBoxAdapter(
                    child: SizedBox(
                      height: 32,
                    ),
                  ),
                   SliverToBoxAdapter(
                    child: SizedBox(height: 117, child: NotesTextFiled(controller: notesController)),
                  ),
                  const SliverToBoxAdapter(
                    child: SizedBox(
                      height: 32,
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: CustomerData(
                      controller1: previousBalanceController,
                      controller2: currentBalanceController,
                    ),
                  ),
                  const SliverToBoxAdapter(
                    child: SizedBox(
                      height: 32,
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => PaymentDone(
                                  paymentModel: PaymentModel(
                                    collectionAgent: value ?? '',
                                    currentBalance:
                                        currentBalanceController.text,
                                    customerId: id,
                                    customerName: value ?? '',
                                    customerPhone: '01000000000',
                                    customerPreviousBalance:
                                        previousBalanceController.text,
                                    date: date,
                                    paymentMethod: 'كاش',
                                    totalCost: totalController.text,
                                    transactionId: id,
                                    notes: notesController.text,
                                    paymentStatus: 'تم الدفع',
                                  ),
                                ),
                              ),
                            );
                          },
                          child: Container(
                            width: 171,
                            alignment: Alignment.center,
                            height: 53,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16),
                                color: const Color(0xff0FB900)),
                            child: const Text(
                              'حفظ',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        Container(
                          width: double.infinity,
                          height: 40,
                          padding: const EdgeInsets.all(12),
                          decoration: const BoxDecoration(
                            color: Color(
                              0xff1D3C70,
                            ),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(50),
                              topRight: Radius.circular(50),
                            ),
                          ),
                          child: const Row(
                            children: [
                              Expanded(
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: 10,
                                    ),
                                    CircleAvatar(
                                      maxRadius: 7,
                                      backgroundColor: Color(0xff0FB900),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      'اونلاين',
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Expanded(
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Icon(
                                      Icons.person,
                                      color: Colors.white,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      'محمد عبد السلام',
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
