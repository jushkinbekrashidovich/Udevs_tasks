import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/main/favorites/favorites_controller.dart';

class MyFavoritesPage extends GetView<FavoritesController> {
  const MyFavoritesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Favorites"),
      ),
      body: Container(),
    );
  }
}
