import 'package:flutter/material.dart';
import 'package:awesome_notifications/awesome_notifications.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Notification App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    initializeNotifications();
    requestNotificationPermission();
  }

  void initializeNotifications() {
    AwesomeNotifications().initialize(
      null,
      [
        NotificationChannel(
          channelKey: 'alerts',
          channelName: 'Basic Channel',
          channelDescription: 'Notification channel for basic tests',
        ),
        NotificationChannel(
          channelKey: 'other_channel',
          channelName: 'Other Channel',
          channelDescription: 'Other types of notifications',
        ),
      ],
      debug: true,
    );
  }

  void requestNotificationPermission() async {
    bool isAllowed = await AwesomeNotifications().isNotificationAllowed();
    if (!isAllowed) {
      await AwesomeNotifications().requestPermissionToSendNotifications();
    }
  }

  void triggerNotification() {
    AwesomeNotifications().createNotification(
      content: NotificationContent(
        channelKey: 'other_channel', // Use a different channel key
        title: 'codimasters',
        body: 'codimasters its a game changer ',
        bigPicture: 'https://codimasters.com/assets/new_assets/images/logo.png',
        largeIcon: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR_M9iqYxyxK3MK-sEItBclEsfpWi8vX-iGiA&usqp=CAU',
        id: 10,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final appBar = AppBar(
      backgroundColor: Colors.black,
      title: Center(
        child: Text('Notification App'),
      ),
    );
    return Scaffold(
      backgroundColor: Colors.purple,
      appBar: appBar,

      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Container(
              margin: EdgeInsets.only(top: 70),
              alignment: Alignment.center,
              child: ElevatedButton(
                onPressed: triggerNotification,
                child: Text('Trigger Notification'),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 30),
              alignment: Alignment.center,
              child: ElevatedButton(
                onPressed: triggerNotification,
                child: Text('Trigger Notification'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
