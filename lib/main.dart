import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:outside/configs/router.dart';
import 'package:outside/styles/global.dart';
import 'package:outside/styles/theme.dart';
import 'package:outside/utils/router.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setSystemUIOverlayStyle(globalSystemUiOverlayStyle);
  SystemChrome.setPreferredOrientations(globalPreferredOrientations);

  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();

    final appRouter = AppRouter(
      routes: AppRoutes.routes,
      notFoundHandler: AppRoutes.routeNotFoundHandler,
    );
    appRouter.setupRoutes();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pietro Flutter Boilerplate',
      localizationsDelegates: const [
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
      ],
      theme: customTheme,
      onGenerateRoute: AppRouter.router.generator,
    );
  }
}
