import 'package:flutter/material.dart';

import 'communityforum.dart';
import 'home.dart';
import 'hydrationtracker.dart';


class Routes {
  static const String home = '/';
  static const String mindfulness = '/mindfulness';
  static const String chatbot = '/chatbot';
  static const String community = '/community';

  static final Map<String, WidgetBuilder> routes = {
    home: (BuildContext context) => const MentalHealthMainScreen(),
    mindfulness: (BuildContext context) => const HydrationApp(),
    chatbot: (BuildContext context) => const MentalChatComponent(),
    community: (BuildContext context) => const CommunityScreen(),
  };
}
