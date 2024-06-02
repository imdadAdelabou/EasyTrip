import 'package:easy_trip/firebase_options.dart';
import 'package:easy_trip/providers/app_state.dart';
import 'package:easy_trip/routes.dart';
import 'package:easy_trip/utils/styles.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<AppState>(
          create: (_) => AppState(),
        ),
      ],
      child: MaterialApp.router(
        routerConfig: router,
        theme: ThemeData(
          useMaterial3: true,
          cardColor: Colors.white,
          appBarTheme: AppBarTheme(
            backgroundColor: AppColor.whiteColor,
          ),
        ),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
