import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop/routes/routes.dart';
import 'package:shop/view/widgets/text_utils.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            SizedBox(
              width: double.infinity,
              height: double.infinity,
              child: Image.asset(
                'assets/images/background.png',
                fit: BoxFit.cover,
              ),
            ),
            Container(
              color: Colors.black.withOpacity(0.2),
              width: double.infinity,
              height: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 100,
                  ),
                  Container(
                    height: 60,
                    width: 190,
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Center(
                      child: TextUtils(
                          text: 'Welcome',
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          underLine: TextDecoration.none),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 60,
                    width: 230,
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextUtils(
                            text: 'Asroo',
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff00BE84),
                            underLine: TextDecoration.none),
                        SizedBox(
                          width: 7,
                        ),
                        TextUtils(
                            text: 'Shop',
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            underLine: TextDecoration.none),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 250,
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xff00BE84),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          padding: EdgeInsets.symmetric(
                            horizontal: 40,
                            vertical: 12,
                          )),
                      onPressed: () {
                        Get.offNamed(Routes.loginScreen);
                      },
                      child: TextUtils(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                        text: 'Get Start',
                        underLine: TextDecoration.none,
                      )),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextUtils(
                        color: Colors.white,
                        text: 'Dont have an Accounts?',
                        fontWeight: FontWeight.normal,
                        fontSize: 18,
                        underLine: TextDecoration.none,
                      ),
                      TextButton(
                        onPressed: () {
                          Get.offNamed(Routes.signUpScreen);
                        },
                        child: TextUtils(
                          text: 'Sign up',
                          fontSize: 18,
                          fontWeight: FontWeight.normal,
                          color: Colors.white,
                          underLine: TextDecoration.none,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
