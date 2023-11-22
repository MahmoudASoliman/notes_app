import 'package:flutter/material.dart';
import 'package:note_app/constants.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: kprimaryColor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: const Center(
        child: Text(
          "Add",
          style: TextStyle(
            color: Colors.black,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
