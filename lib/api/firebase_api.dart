import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:firebase_push_notification/main.dart';

class FirebaseApi {
  final _firebasemessaging = FirebaseMessaging.instance;

  Future<void> initNotification() async {
    await _firebasemessaging.requestPermission();

    final fCMToken = await _firebasemessaging.getToken();

    print('Token: $fCMToken');

    initPushNotification();
  }

  void handleMessage(RemoteMessage? message){
    if(message == null) return;

    navigatorKey.currentState?.pushNamed(
      '/notification_screen',
      arguments: message,
    );

  }

  Future initPushNotification() async {
    FirebaseMessaging.instance.getInitialMessage().then(handleMessage);

    FirebaseMessaging.onMessageOpenedApp.listen(handleMessage);
  }
}