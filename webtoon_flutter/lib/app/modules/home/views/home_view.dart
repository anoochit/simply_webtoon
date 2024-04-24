import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:webtoon_flutter/main.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeView'),
        centerTitle: true,
      ),
      body: Center(
        child: FutureBuilder(
          future: client.book.hello('Anuchit'),
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            if (snapshot.hasError) {
              return Text('Error');
            }

            if (snapshot.hasData) {
              return Text(snapshot.data);
            }

            return CircularProgressIndicator();
          },
        ),
      ),
    );
  }
}
