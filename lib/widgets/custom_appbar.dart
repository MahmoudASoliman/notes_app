import 'package:flutter/material.dart';
import 'package:note_app/widgets/custom_icon_search.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
    required this.title,
    required this.iconData,
  });
  final String title;
  final IconData iconData;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Text(
            title,
            style: const TextStyle(fontSize: 28),
          ),
        ),
        CustomIcon(
          icon: iconData,
        )
      ],
    );
  }
}
