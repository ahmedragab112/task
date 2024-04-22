import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:task/model/payment_model.dart';
import 'package:task/model/transaction_model.dart';
import 'package:task/widget/custom_button.dart';
import 'package:task/widget/custom_transaction.dart';
import 'package:task/widget/data_row.dart';

class PaymentDone extends StatelessWidget {
  const PaymentDone({super.key, required this.paymentModel});
  final PaymentModel paymentModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('تحصيل دفعه'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
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
                height: 24,
              ),
            ),
            SliverToBoxAdapter(
              child: PaymentIdAndDate(
                txt1: 'رقم الايصال',
                txt2: paymentModel.transactionId,
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
                txt2: paymentModel.date,
              ),
            ),
            const SliverToBoxAdapter(
              child: SizedBox(
                height: 16,
              ),
            ),
            SliverToBoxAdapter(
              child: PaymentIdAndDate(
                txt1: 'اسم العميل',
                txt2: paymentModel.customerName,
              ),
            ),
            const SliverToBoxAdapter(
              child: SizedBox(
                height: 16,
              ),
            ),
            const SliverToBoxAdapter(
              child: PaymentIdAndDate(
                txt1: 'كود العميل',
                txt2: '111111111',
              ),
            ),
            const SliverToBoxAdapter(
              child: SizedBox(
                height: 16,
              ),
            ),
            SliverToBoxAdapter(
              child: PaymentIdAndDate(
                  txt1: 'رقم الهاتف', txt2: paymentModel.customerPhone),
            ),
            const SliverToBoxAdapter(
              child: SizedBox(
                height: 16,
              ),
            ),
            SliverToBoxAdapter(
              child: PaymentIdAndDate(
                  txt1: 'الرصيد الاسبق',
                  txt2: paymentModel.customerPreviousBalance),
            ),
            const SliverToBoxAdapter(
              child: SizedBox(
                height: 16,
              ),
            ),
            SliverToBoxAdapter(
              child: PaymentIdAndDate(
                  txt1: 'المبلغ المدفوع', txt2: paymentModel.totalCost),
            ),
            const SliverToBoxAdapter(
              child: SizedBox(
                height: 16,
              ),
            ),
            SliverToBoxAdapter(
              child: PaymentIdAndDate(
                  txt1: 'الرصيد الحالي', txt2: paymentModel.currentBalance),
            ),
            const SliverToBoxAdapter(
              child: SizedBox(
                height: 16,
              ),
            ),
            SliverToBoxAdapter(
              child: PaymentIdAndDate(
                  txt1: 'طريقه الدفع', txt2: paymentModel.paymentMethod),
            ),
            const SliverToBoxAdapter(
              child: SizedBox(
                height: 16,
              ),
            ),
            SliverToBoxAdapter(
              child: PaymentIdAndDate(
                  txt1: 'بيانات الدفع', txt2: paymentModel.paymentStatus ?? ''),
            ),
            const SliverToBoxAdapter(
              child: SizedBox(
                height: 16,
              ),
            ),
            SliverToBoxAdapter(
              child: PaymentIdAndDate(
                  txt1: 'ملاحظات', txt2: paymentModel.notes ?? ''),
            ),
            const SliverToBoxAdapter(
              child: SizedBox(
                height: 16,
              ),
            ),
            SliverToBoxAdapter(
              child: PaymentIdAndDate(
                  txt1: 'مندوب التحصيل', txt2: paymentModel.collectionAgent),
            ),
            const SliverToBoxAdapter(
              child: SizedBox(
                height: 81,
              ),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 90,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (context, index) => const SizedBox(
                    width: 4,
                  ),
                  itemCount: transactionList.length,
                  itemBuilder: (context, index) => TransactionWidget(
                    icon: transactionList[index].icon,
                    txt: transactionList[index].txt,
                  ),
                ),
              ),
            ),
            const SliverToBoxAdapter(
              child: SizedBox(
                height: 22,
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
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
            )
          ],
        ),
      ),
    );
  }
}
