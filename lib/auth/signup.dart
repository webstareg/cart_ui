import 'package:cart_ui/auth/login.dart';
import 'package:cart_ui/auth/widgets/custom_button.dart';
import 'package:cart_ui/auth/widgets/custom_text_form_field.dart';
import 'package:cart_ui/cart/cart_view.dart';
import 'package:cart_ui/core/colors.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool isPassword = true;
  bool isConfirmPassword = true;
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //resizeToAvoidBottomInset: false,
        body: Center(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Form(
            key: formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'WELCOME',
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                      color: AppColors.primary),
                ),
                const SizedBox(
                  height: 50,
                ),
                Text(
                  'Name',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: AppColors.textSecondary),
                ), // TextFormField for name
                CustomTextFormField(
                  keyboardType: TextInputType.name,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Kindly enter your name';
                    }
                    return null;
                  },
                ),
                const SizedBox(
                  height: 30,
                ),
                Text(
                  'Email',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: AppColors.textSecondary),
                ), // TextFormField for email
                CustomTextFormField(
                  keyboardType: TextInputType.emailAddress,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Kindly enter your email';
                    }
                    return null;
                  },
                ),
                const SizedBox(
                  height: 30,
                ),
                Text(
                  'Password',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: AppColors.textSecondary),
                ), // TextFormField for password
                CustomTextFormField(
                  keyboardType: TextInputType.text,
                  password: isPassword,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Kindly enter your password';
                    }
                    if (value.length < 8) {
                      return 'Password must be 8 or more charcters';
                    }
                    return null;
                  },
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        isPassword = !isPassword;
                      });
                    },
                    icon: Icon((isPassword)
                        ? Icons.visibility_off
                        : Icons.remove_red_eye_outlined),
                    color: AppColors.primary,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Text(
                  'Confirm Password',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: AppColors.textSecondary),
                ), // TextFormField for password
                // TextFormField for confirm password
                CustomTextFormField(
                  keyboardType: TextInputType.text,
                  password: isConfirmPassword,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Kindly enter your password';
                    }
                    if (value.length < 8) {
                      return 'Password must be 8 or more charcters';
                    }
                    return null;
                  },
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        isConfirmPassword = !isConfirmPassword;
                      });
                    },
                    icon: Icon((isConfirmPassword)
                        ? Icons.visibility_off
                        : Icons.remove_red_eye_outlined),
                    color: AppColors.primary,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                // Sign up button
                CustomButton(
                  text: 'SIGN UP',
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (context) => const CartView(),
                      ));
                    }
                  },
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Already have account?'),
                    TextButton(
                        style: TextButton.styleFrom(
                            foregroundColor: AppColors.primary),
                        onPressed: () {
                          Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                  builder: (context) => const Login()));
                        },
                        child: const Text('SIGN IN')),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
