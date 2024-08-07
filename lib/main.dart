import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:video_diary/Core/Di/dependency.dart';
import 'package:video_diary/Core/routing/routingmanger.dart';
import 'package:video_diary/DiaryApp.dart';

import 'firebase_options.dart';

void main() async {
  SetUpGit();
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(DiaryApp(
    routesManager: RoutesManager(),
  ));
}
