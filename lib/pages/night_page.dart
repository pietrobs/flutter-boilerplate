import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class NightPage extends StatelessWidget {
  const NightPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Night page"),
      ),
      body: SafeArea(
        child: Stack(children: [
          Positioned(child: Lottie.asset("assets/lottie/background-dark.json")),
          Positioned(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [Container()],
            ),
          ),
        ]),
      ),
    );
  }
}
