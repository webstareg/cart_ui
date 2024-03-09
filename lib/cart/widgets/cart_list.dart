import 'package:cart_ui/core/colors.dart';
import 'package:cart_ui/models/cart_model.dart';
import 'package:flutter/material.dart';

class CartList extends StatelessWidget {
  const CartList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) {
        return const ListTile(
            // title: Row(
            //   crossAxisAlignment: CrossAxisAlignment.start,
            //   children: [
            //     ClipRRect(
            //         borderRadius: BorderRadius.circular(3),
            //         child: Image.asset(
            //           cartList[index].image,
            //           width: 100,
            //           height: 100,
            //           fit: BoxFit.cover,
            //         )),

            //     // Container(
            //     //   width: 100,
            //     //   height: 100,
            //     //   decoration: BoxDecoration(
            //     //     shape: BoxShape.rectangle,
            //     //     image: DecorationImage(
            //     //       image: AssetImage(cartList[index].image),
            //     //       fit: BoxFit.cover,
            //     //     ),
            //     //   ),
            //     // ),

            //     // CircleAvatar(
            //     //   radius: 50,
            //     //   //backgroundColor: Colors.white38,
            //     //   child: CircleAvatar(
            //     //     radius: 100,
            //     //     backgroundImage: AssetImage(cartList[index].image),
            //     //   ),
            //     // ),

            //     const SizedBox(
            //       width: 20,
            //     ),
            //     // Expanded(
            //     //   child: Column(
            //     //     crossAxisAlignment: CrossAxisAlignment.start,
            //     //     children: [
            //     //       Text(
            //     //         cartList[index].name,
            //     //         style: TextStyle(
            //     //           color: AppColors.disabledButton,
            //     //           //fontWeight: FontWeight.w600,
            //     //           fontSize: 14,
            //     //         ),
            //     //       ),
            //     //       Text(
            //     //         cartList[index].price,
            //     //         style: TextStyle(
            //     //           color: AppColors.primary,
            //     //           fontWeight: FontWeight.w700,
            //     //           fontSize: 16,
            //     //         ),
            //     //       ),
            //     //       // Row(
            //     //       //   children: [
            //     //       //     Container(
            //     //       //       width: 30,
            //     //       //       height: 30,
            //     //       //       decoration: BoxDecoration(
            //     //       //           color: AppColors.cardButton,
            //     //       //           borderRadius: BorderRadius.circular(10)),
            //     //       //       child: Icon(
            //     //       //         Icons.add,
            //     //       //         color: AppColors.textSecondary,
            //     //       //       ),
            //     //       //     ),
            //     //       //     const SizedBox(
            //     //       //       width: 10,
            //     //       //     ),
            //     //       //     Text(
            //     //       //       cartList[index].qty,
            //     //       //       style: TextStyle(
            //     //       //           color: AppColors.black,
            //     //       //           fontSize: 18,
            //     //       //           fontWeight: FontWeight.w600),
            //     //       //     ),
            //     //       //     const SizedBox(
            //     //       //       width: 10,
            //     //       //     ),
            //     //       //     Container(
            //     //       //       width: 30,
            //     //       //       height: 30,
            //     //       //       decoration: BoxDecoration(
            //     //       //           color: AppColors.cardButton,
            //     //       //           borderRadius: BorderRadius.circular(10)),
            //     //       //       child: Icon(
            //     //       //         Icons.remove,
            //     //       //         color: AppColors.textSecondary,
            //     //       //       ),
            //     //       //     ),
            //     //       //   ],
            //     //       // ),
            //     //     ],
            //     //   ),
            //     // ),
            //   ],
            // ),
            );
      },
      separatorBuilder: (context, index) {
        return Divider(
          color: AppColors.secondaryButtonBG,
          indent: 15,
          endIndent: 15,
        );
      },
      itemCount: cartList.length,
    );
  }
}
