import 'package:uimahin/utils/colors.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: accurate,
      elevation: 0,
      leading: const Icon(
        Icons.short_text_outlined,
        color: primaryColor,
      ),
      actions: const [
        Icon(
          Icons.notifications_outlined,
          color: primaryColor,
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
