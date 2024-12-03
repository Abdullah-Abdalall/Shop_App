import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:shop/utils/theme.dart';
import 'package:shop/view/widgets/text_utils.dart';

class ContainerUnder extends StatelessWidget {
  const ContainerUnder({
    super.key,
    required this.text,
    required this.onPress,
    required this.textType,
  });
  final String text;
  final Function() onPress;
  final String textType;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 100,
      decoration: BoxDecoration(
        color: Get.isDarkMode ? mainColor : pinkClr,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextUtils(
            color: Colors.white,
            text: text,
            fontSize: 20,
            fontWeight: FontWeight.bold,
            underLine: TextDecoration.none,
          ),
          TextButton(
            onPressed: () {},
            child: TextUtils(
              color: Colors.white,
              text: textType,
              fontSize: 20,
              fontWeight: FontWeight.bold,
              underLine: TextDecoration.none,
            ),
          )
        ],
      ),
    );
  }
}
