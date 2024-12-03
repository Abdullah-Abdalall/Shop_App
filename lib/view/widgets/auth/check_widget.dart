import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:shop/logic/controllers/auth_controller.dart';
import 'package:shop/utils/theme.dart';
import 'package:shop/view/widgets/text_utils.dart';

class CheckWidget extends StatelessWidget {
  CheckWidget({super.key});
  final controller = Get.find<AuthController>();
  @override
  Widget build(BuildContext context) {
    return GetBuilder<AuthController>(builder: (_) {
      return Row(
        children: [
          InkWell(
            onTap: () {
              controller.checkBox();
            },
            child: Container(
              height: 35,
              width: 35,
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(10),
              ),
              child: controller.isCheckBox
                  ? Get.isDarkMode
                      ? Image.asset('assets/images/check.png')
                      : Icon(
                          Icons.done,
                          color: pinkClr,
                        )
                  : Container(),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Row(
            children: [
              TextUtils(
                  text: 'I accept ',
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                  color: Get.isDarkMode ? Colors.black : Colors.white,
                  underLine: TextDecoration.none),
              TextUtils(
                  text: ' terms & conditions ',
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                  color: Get.isDarkMode ? Colors.black : Colors.white,
                  underLine: TextDecoration.underline)
            ],
          )
        ],
      );
    });
  }
}
