import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'extensions/build_context_extension.dart';
import 'features/common/ui/providers/app_theme_mode_provider.dart';
import 'features/common/ui/widgets/offline_container.dart';
import 'routing/router.dart';
import 'utils/provider_observer.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  /// Google Font
  LicenseRegistry.addLicense(() async* {
    final license = await rootBundle.loadString('google_fonts/OFL.txt');
    yield LicenseEntryWithLineBreaks(['google_fonts'], license);
  });

  runApp(
    ProviderScope(
      observers: [AppObserver()],
      child: MainApp(),
    ),
  );
}

class MainApp extends ConsumerWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeMode = ref.watch(appThemeModeProvider);
    return MaterialApp.router(
      theme: context.lightTheme,
      darkTheme: context.darkTheme,
      themeMode: themeMode.value,
      routerConfig: router,
      debugShowCheckedModeBanner: false,
      builder: (context, child) {
        return OfflineContainer(child: child);
      },
    );
  }
}
