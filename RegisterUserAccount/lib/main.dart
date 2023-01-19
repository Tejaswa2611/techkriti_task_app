import 'package:flutter/material.dart';
import 'package:modernlogintute/pages/auth_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';


void main() async 
{ 
  WidgetsFlutterBinding.ensureInitialized();
  // if (Firebase.apps.isEmpty) 
  //   {
  //   await Firebase.initializeApp(
  //   name: "Mitch Login",
  //     options: DefaultFirebaseOptions.currentPlatform,
  //   );
  //   }
  // else 
  //   {
  //    Firebase.app(); // if already initialized, use that one
  //   // runApp(const MyApp());
  //   }
  await Firebase.initializeApp(
    name: "Mitch Login",
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp()); 
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AuthPage(),
    );
  }
}
