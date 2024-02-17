import 'package:ar_flutter_plugin/ar_flutter_plugin.dart';
import 'package:ar_tik/pages/dashboard/dashboard_screen.dart';
import 'package:ar_tik/pages/home/home_screen.dart';
import 'package:ar_tik/providers/global_providers.dart';
import 'package:ar_tik/utils/custom_theme.dart';
import 'package:ar_tik/utils/providers_app.dart';
import 'package:ar_tik/utils/test_ar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(ProviderApp().init());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String _platformVersion = 'Unknown';

  @override
  void initState() {
    super.initState();
    initPlatformState();
  }

  Future<void> initPlatformState() async {
    String platformVersion;
    try {
      platformVersion = await ArFlutterPlugin.platformVersion;
    } on PlatformException {
      platformVersion = 'Failed to get platform version.';
    }
    if (!mounted) return;

    setState(() {
      _platformVersion = platformVersion;
      print('platform: $_platformVersion');
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: CustomeTheme.lightThemeData(context),
      home: LocalAndWebObjectsWidget(),
    );
  }
}
