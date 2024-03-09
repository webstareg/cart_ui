import 'package:cart_ui/cart/widgets/cart_list.dart';
import 'package:cart_ui/core/colors.dart';
import 'package:flutter/material.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            color: AppColors.black,
            onPressed: () {},
            icon: const Icon(Icons.arrow_back_ios)),
        title: Text(
          'My cart',
          style: TextStyle(color: AppColors.black),
          textAlign: TextAlign.center,
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   backgroundColor: AppColors.primary,
      //   foregroundColor: AppColors.white,
      //   child: const Icon(Icons.add),
      //   onPressed: () {},
      // ),
      body: const Column(
        children: [
          // Cart List
          CartList()
        ],
      ),
    );
  }
}
