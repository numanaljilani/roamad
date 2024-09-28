import 'package:flutter/material.dart';

class ChoiceChipWidget extends StatelessWidget {
  String? selectedValue;
  String label;
  VoidCallback onTap;
  ChoiceChipWidget(
      {super.key,
        required this.onTap,
        required this.selectedValue,
        required this.label});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 120,
        height: 45,
        margin: const EdgeInsets.only(left: 10),
        decoration: BoxDecoration(
            border: Border.all(color: Colors.grey.shade300),
            color: selectedValue == label
                ? Theme.of(context).primaryColor
                : Colors.white,
            borderRadius: BorderRadius.circular(30),
            boxShadow: [
              BoxShadow(color: Colors.grey.shade300, blurRadius: 10),
            ]),
        alignment: Alignment.center,
        child: Text(
          label,
          style: TextStyle(
              color: selectedValue == label ? Colors.white : Colors.grey,
              fontWeight: FontWeight.normal,
              fontSize: 12),
        ),
      ),
    );
  }
}