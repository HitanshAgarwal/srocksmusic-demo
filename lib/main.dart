import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'home.dart';
import 'package:provider/provider.dart';
import 'models/services_repository.dart';
import 'models/services_view_model.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  final firestore = FirebaseFirestore.instance;

  runApp(
    MultiProvider(
      providers: [
        Provider<FirebaseFirestore>.value(value: firestore),
        ProxyProvider<FirebaseFirestore, ServicesRepository>(
          update: (_, firestore, __) => ServicesRepository(firestore),
        ),
        ChangeNotifierProxyProvider<ServicesRepository, ServicesViewModel>(
          create: (_) => ServicesViewModel(ServicesRepository(firestore)),
          update: (_, repo, __) => ServicesViewModel(repo),
        ),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'S.Rocks.Music Demo', home: HomePage());
  }
}
