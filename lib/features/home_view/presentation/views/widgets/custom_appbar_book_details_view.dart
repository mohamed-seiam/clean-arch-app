import 'package:flutter/material.dart';

class CustomBookDetailsAppBAr extends StatelessWidget {
  const CustomBookDetailsAppBAr({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.close_outlined),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.shopping_cart_outlined),
        ),
      ],
    );
  }
}
