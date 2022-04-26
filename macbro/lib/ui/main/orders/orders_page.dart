import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:macbro/controller/main/my_orders/my_orders_controller.dart';

class MyOrdersPage extends GetView<MyOrdersController> {
  const MyOrdersPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Orders"),
      ),
      body: Container(),
    );
  }
}
