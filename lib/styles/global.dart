import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

final globalSystemUiOverlayStyle = SystemUiOverlayStyle.dark.copyWith(
  statusBarColor: Colors.transparent,
);

final globalPreferredOrientations = [
  DeviceOrientation.portraitUp,
  DeviceOrientation.portraitDown,
];
