import 'package:flutter/material.dart';

import 'package:flutter_local_notifications/flutter_local_notifications.dart';

void main() => runApp(const HydrationApp());

class HydrationApp extends StatelessWidget {
  const HydrationApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Hydration Reminder',
      home: HydrationHomePage(),
    );
  }
}

class HydrationHomePage extends StatefulWidget {
  const HydrationHomePage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _HydrationHomePageState createState() => _HydrationHomePageState();
}

// ignore: duplicate_ignore
class _HydrationHomePageState extends State<HydrationHomePage> {
  int _counter = 0;
  late FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin;

// ignore: non_constant_identifier_names
IOSInitializationSettings() {

  // ignore: unused_element

}
 
  
  Future<void> _showNotification() async {
    
    var androidPlatformChannelSpecifics = const AndroidNotificationDetails(
      'hydration_reminder_id',
      'Reminds you to stay hydrated',
      importance: Importance.max,
      priority: Priority.high,
      ticker: 'ticker',
      playSound: true,
      sound: RawResourceAndroidNotificationSound('notification'),
    );
 // ignore: non_constant_identifier_names
 IOSNotificationDetails() {}
    var iosPlatformChannelSpecifics =  IOSNotificationDetails();
    var platformChannelSpecifics = NotificationDetails(
        android: androidPlatformChannelSpecifics,
        iOS: iosPlatformChannelSpecifics);
    await flutterLocalNotificationsPlugin.show(
        0, 'Hydration Reminder', 'Drink some water!', platformChannelSpecifics);
  
  }


  void _incrementCounter() {
    setState(() {
      _counter++;
      _showNotification();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hydration Reminder'),

        leading: IconButton(
    icon: const Icon(Icons.arrow_back),
    onPressed: () {
      Navigator.pop(context);
    },
  ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have hydrated $_counter times today.',
              // ignore: deprecated_member_use
              style: Theme.of(context).textTheme.headline6,
            ),
          ],
        ),
      ),
      floatingActionButton: ElevatedButton(
        onPressed: _incrementCounter,
        // tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
  
}
