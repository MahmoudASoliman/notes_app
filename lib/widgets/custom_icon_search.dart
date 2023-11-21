import 'package:flutter/material.dart';

class CustomIconSearch extends StatelessWidget {
  const CustomIconSearch({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 46,
      width: 46,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.05),
        borderRadius: const BorderRadius.all(
          Radius.circular(15),
        ),
      ),
      child: const Icon(Icons.search, size: 28),
    );
  }
}
