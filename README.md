# firebase_push_notification

## Setup Project
1. buat Project Flutter
2. Project Firebase
3. Connect Flutter ke Firebase
![alt text](<Screenshot 2024-05-12 135443.png>)

## Install dependency
### firebase_core
![alt text](<Screenshot 2024-05-12 135500.png>)
### firebase_messaging
![alt text](<Screenshot 2024-05-12 135529.png>)

## Setup Main
``` dart
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}
```

## buat API untuk berkomunikasi dengan firebase messaging
class FirebaseApi
```dart
class FirebaseApi {
  // instance firebase_messaging
  final _firebasemessaging = FirebaseMessaging.instance;


}
```

method init notification
```dart
// inisialisasi notification
Future<void> initNotification() async {
    // request permission
    await _firebasemessaging.requestPermission();

    // fetch FCM token device
    final fCMToken = await _firebasemessaging.getToken();

    // print token
    print('Token: $fCMToken');

    initPushNotification();
  }
```

contoh token:
![alt text](<Screenshot 2024-05-12 141934.png>)

## Send notification menggunakan firebase
1. buat campaign baru
![alt text](<Screenshot 2024-05-12 142030.png>)

![alt text](<Screenshot 2024-05-12 142036.png>)

2. compose notification
![alt text](<Screenshot 2024-05-12 142113.png>)

3. send test message dan masukkan fcmtoken yang telah didapat
![alt text](<Screenshot 2024-05-12 142127.png>)

4. send
5. contoh notiication yang masuk
![alt text](<Screenshot 2024-05-12 142314.png>)

## tambahkan method pada firebaseApi untuk menghandle notifikasi

``` dart
// handle message
void handleMessage(RemoteMessage? message){
    if(message == null) return;

    // push ke '/notification_screen'
    navigatorKey.currentState?.pushNamed(
      '/notification_screen',
      arguments: message,
    );

  }
```

jangan lupa buat routes dan page untuk menampilkan notification

## buat method unutk inisialisasi background setting
```dart
Future initPushNotification() async {
    // handle notif ketika app terimanated dan sekarang terbka
    FirebaseMessaging.instance.getInitialMessage().then(handleMessage);

    // attach event listener ketika membuka app via notifikasi
    FirebaseMessaging.onMessageOpenedApp.listen(handleMessage);
  }
```

call method tersebut di method initNotifiaction
```dart
Future<void> initNotification() async {
    ...

    initPushNotification();
  }
```

## tampilkan notifikasi pada page notificationPage
```dart
class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    final message = ModalRoute.of(context)!.settings.arguments as RemoteMessage;

    return Scaffold(
      appBar: AppBar(
        title: Text('Notification'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Text(message.notification!.title.toString()),
          Text(message.notification!.body.toString()),
          Text(message.data.toString()),
        ],
      ),
    );
  }
}
```

## Test kirim message dan buka notifikasi
![alt text](<Screenshot 2024-05-12 150117.png>)

![alt text](<Screenshot 2024-05-12 150123.png>)
