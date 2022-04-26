import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:macbro/controller/main/profile/profile_controller.dart';
import 'package:macbro/core/custom_widgets/text_fields/custom_phone_text_field.dart';

class ProfilePage extends GetView<ProfileController> {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProfileController>(
      builder: (ctr) {
        return Scaffold(
          appBar: AppBar(
            title: const Text("Profile"),
          ),
          // body: CustomPhoneTextField(
          //   controller: controller,
          // ),
        );
      }
    );
  }
}
