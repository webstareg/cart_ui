import 'package:cart_ui/core/colors.dart';
import 'package:cart_ui/models/cart_model.dart';
import 'package:flutter/material.dart';

class CartList extends StatelessWidget {
  const CartList({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        //padding: const EdgeInsets.symmetric(vertical: 15),
        child: ListView.separated(
          itemBuilder: (context, index) {
            return ListTile(
              contentPadding: const EdgeInsets.all(20),
              title: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      border: Border.all(width: 10), // Thick black border
                      borderRadius: BorderRadius.circular(
                          10), // Rounded corners                  color: const Color(0xff7c94b6), // Light blue background color
                      image: DecorationImage(
                        image: AssetImage(cartList[index].image),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 25,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        cartList[index].name,
                        style: TextStyle(
                          color: AppColors.textSecondary,
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                        ),
                      ),
                      Text(
                        cartList[index].price,
                        style: TextStyle(
                            color: AppColors.primary,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        cartList[index].qty,
                        style: TextStyle(
                          color: AppColors.black,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            );
          },
          separatorBuilder: (context, index) {
            return const SizedBox(
              height: 1,
            );
          },
          itemCount: cartList.length,
        ),
      ),
    );
  }
}
