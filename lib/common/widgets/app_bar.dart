import 'package:cj_flutter_riverpod_tutorial_app/common/utils/constants.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(actions: [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: IconButton(
          icon: const Icon(
            Icons.shopping_cart,
            size: Constansts.iconSize,
            color: Colors.white,
          ),
          tooltip: 'Open shopping cart',
          onPressed: () {
            // handle the press
          },
        ),
      ),
    ]);
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
