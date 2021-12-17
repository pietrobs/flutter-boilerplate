import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:outside/configs/router.dart';
import 'package:outside/utils/router.dart';

class InitialPage extends StatelessWidget {
  const InitialPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Pietro Boilerplate"),
      ),
      body: SafeArea(
        child: Stack(children: [
          Positioned(child: Lottie.asset("assets/lottie/background.json")),
          Positioned(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Center(
                  child: ElevatedButton(
                    onPressed: () {
                      AppRouter.router.navigateTo(
                        context,
                        AppRoutes.night.route,
                        transition: TransitionType.cupertino,
                      );
                    },
                    child: const Text("Go to Night Page"),
                  ),
                )
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
