import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:go_router/go_router.dart';
import 'package:virtual_card_holder/models/contact_model.dart';
import 'package:virtual_card_holder/pages/form_page.dart';
import 'package:virtual_card_holder/pages/home_page.dart';
import 'package:virtual_card_holder/pages/scan_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final _router = GoRouter(
    debugLogDiagnostics: true,
    routes: [
      GoRoute(
        path: HomePage.routeName,
        name: HomePage.routeName,
        builder: (context, state) => const HomePage(),
        routes: [
          GoRoute(
            path: ScanPage.routeName,
            name: ScanPage.routeName,
            builder: (context, state) => const ScanPage(),
            routes: [
              GoRoute(
                path: FormPage.routeName,
                name: FormPage.routeName,
                builder: (context,state) => FormPage(contactModel: state.extra as ContactModel),
              ),
            ],
          ),
        ],
      ),
    ],
  );

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      routerConfig: _router,
      builder: EasyLoading.init(),
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
    );
  }
}
