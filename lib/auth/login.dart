import 'package:cart_ui/auth/signup.dart';
import 'package:cart_ui/auth/widgets/custom_button.dart';
import 'package:cart_ui/auth/widgets/custom_text_form_field.dart';
import 'package:cart_ui/cart/cart_view.dart';
import 'package:cart_ui/core/colors.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool isPassword = true;
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: Scaffold(
          //resizeToAvoidBottomInset: false,
          body: Center(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: SingleChildScrollView(
            child: Form(
              key: formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Hello !',
                    style: TextStyle(
                        fontFamily: 'Merriweather',
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                        color: AppColors.textSecondary),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Text(
                    'WELCOME BACK',
                    style: TextStyle(
                        fontFamily: 'Merriweather',
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        color: AppColors.black),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Text(
                    'Email',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: AppColors.textSecondary),
                  ),
                  // TextFormField for email
                  CustomTextFormField(
                    keyboardType: TextInputType.emailAddress,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Kindly enter your Email';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Text(
                    'Password',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: AppColors.textSecondary),
                  ),
                  // TextFormField for password
                  CustomTextFormField(
                    keyboardType: TextInputType.text,
                    password: isPassword,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Kindly enter your Password';
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
                    height: 50,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Forgot Password',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: AppColors.primary),
                      ),
                    ],
                  ), // Sign up button
                  const SizedBox(
                    height: 50,
                  ),
                  CustomButton(
                    text: 'Login',
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) => const CartView(),
                        ));
                      }
                    },
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                          style: TextButton.styleFrom(
                              foregroundColor: AppColors.primary),
                          onPressed: () {
                            Navigator.of(context).pushReplacement(
                                MaterialPageRoute(
                                    builder: (context) => const SignUp()));
                          },
                          child: const Text(
                            'SIGN UP',
                            style: TextStyle(fontFamily: 'Nunito Sans'),
                          )),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      )),
    );
  }
}
