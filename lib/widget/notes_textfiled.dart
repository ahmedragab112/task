import 'package:flutter/material.dart';

class NotesTextFiled extends StatelessWidget {
  const NotesTextFiled({super.key, required this.controller});
  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 117,
      child: TextField(
        controller: controller,
        textAlign: TextAlign.start,
        textAlignVertical: TextAlignVertical.top,
        style: const TextStyle(
            color: Colors.grey, fontSize: 14, fontWeight: FontWeight.w400),
        minLines: null,
        maxLines: null,
        expands: true,
        decoration: InputDecoration(
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: const BorderSide(color: Color(0xffE4E6E8), width: 1),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: const BorderSide(color: Color(0xffE4E6E8), width: 1),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: const BorderSide(color: Color(0xffE4E6E8), width: 1),
          ),
          hintText: 'ملاحظات',
          hintStyle: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: Colors.grey,
          ),
        ),
      ),
    );
  }
}
