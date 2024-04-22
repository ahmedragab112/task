import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TransActionModel {
  String txt;
  IconData icon;

  TransActionModel({required this.txt, required this.icon});
}

List<TransActionModel> transactionList = [
  TransActionModel(txt: "طباعه", icon: Icons.print),
  TransActionModel(txt: "حفظ", icon: Icons.picture_as_pdf_outlined),
  TransActionModel(txt: "حفظ", icon: Icons.image_outlined),
  TransActionModel(txt: "ارسال", icon: FontAwesomeIcons.whatsapp)
];
