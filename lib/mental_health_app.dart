import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'home.dart';


class MentalHealthApp extends StatelessWidget {
  const MentalHealthApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
    return  const MaterialApp(
      title: "CareBuddy",
      debugShowCheckedModeBanner: false,
      home: ProviderScope(child: MentalHealthMainScreen()),
    );
  }
}
