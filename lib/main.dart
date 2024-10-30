import 'package:depi_proj/depi/log_layout/Login.dart';
import 'package:flutter/material.dart';

/*
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.light(useMaterial3: false),
        home: Login());
  }
}
*/

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.light(useMaterial3: false),
        home: Login());
  }
}



/*
{
  "status": "success",
  "result": [
    {
      "projectId": "depi-proj",
      "projectNumber": "386459356962",
      "displayName": "depi-proj",
      "name": "projects/depi-proj",
      "resources": {
        "hostingSite": "depi-proj",
        "realtimeDatabaseInstance": "depi-proj-default-rtdb"
      },
      "state": "ACTIVE",
      "etag": "1_9d641500-77c1-4d4f-b8ab-c1d463903c9b"
    }
  ]
}
*/


/*
From any directory, run this command:

dart pub global activate flutterfire_cli
Then, at the root of your Flutter project directory, run this command:

flutterfire configure --project=depi-proj
This automatically registers your per-platform apps with Firebase and adds a lib/firebase_options.dart configuration file to your Flutter project.


*/