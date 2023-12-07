import 'package:flutter/material.dart';
import 'package:note_app/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key, required this.hint, this.maxlines = 1, this.onSaved});
  final String hint;
  final int maxlines;
  final void Function(String?)? onSaved;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onSaved,
      validator: (value) {
        if (value?.isEmpty ??true) {
          return "This Field is Requierd";
        } else {
          return null;
        }
      },
      maxLines: maxlines,
      cursorColor: kPrimaryColor,
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: const TextStyle(
          color: kPrimaryColor,
        ),
        border: borderBuilder(),
        enabledBorder: borderBuilder(),
        focusedBorder: borderBuilder(color: kPrimaryColor),
      ),
    );
  }

  OutlineInputBorder borderBuilder({color}) {
    return OutlineInputBorder(
      borderRadius: const BorderRadius.all(
        Radius.circular(8),
      ),
      borderSide: BorderSide(color: color ?? Colors.white),
    );
  }
}
