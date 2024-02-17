import 'package:ar_tik/main.dart';
import 'package:ar_tik/providers/global_providers.dart';
import 'package:provider/provider.dart';

class ProviderApp {
  init() {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => GlobalProvider()),
      ],
      child: const MyApp(),
    );
  }
}
