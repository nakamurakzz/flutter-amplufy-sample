import 'package:flutter/material.dart';
import 'package:flutter_amplify_sample/login_page.dart';
import 'package:flutter_amplify_sample/sign_up_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Photo Gallary App",
        theme: ThemeData(visualDensity: VisualDensity.adaptivePlatformDensity),
        home: Navigator(
          pages: [
            MaterialPage(child: LoginPage()),
            MaterialPage(child: SignUpPage())
          ],
          onPopPage: (route, reslut) => route.didPop(reslut),
        )
    );
  }
}
