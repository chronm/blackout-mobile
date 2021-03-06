import 'package:flutter/material.dart' show Brightness, BuildContext, Colors, Container, Key, Locale, MaterialApp, Navigator, State, StatefulWidget, StatelessWidget, ThemeData, Widget, WidgetsBinding, showDialog;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:permission_handler/permission_handler.dart';

import '../../generated/l10n.dart';
import '../../generated/l10n_extension.dart';
import '../../main.dart';
import '../../routes.dart';
import '../../themes.dart';
import '../../widget/changelog/changelog.dart';
import '../batch/batch_overview_screen.dart';
import '../group/group_overview_screen.dart';
import '../home/home_screen.dart';
import '../product/product_overview_screen.dart';
import '../settings/settings_screen.dart';
import '../setup/setup_screen.dart';
import 'cubit/blackout_cubit.dart';
import 'widgets/ask_for_import_database.dart';
import 'widgets/ask_for_redirect_to_settings.dart';
import 'widgets/ask_for_storage_rationale.dart';

class BlackoutApp extends StatefulWidget {
  const BlackoutApp({Key key}) : super(key: key);

  @override
  _BlackoutAppState createState() => _BlackoutAppState();
}

class _BlackoutAppState extends State<BlackoutApp> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      sl<BlackoutCubit>().initializeApp();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Blackout",
      supportedLocales: S.delegate.supportedLocales,
      localizationsDelegates: [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      localeResolutionCallback: S.delegate.resolution(fallback: Locale("en", "")),
      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: createMaterialColor(Colors.redAccent),
        toggleableActiveColor: Colors.redAccent,
        accentColor: Colors.redAccent,
      ),
      initialRoute: Routes.initial,
      routes: {
        Routes.initial: (context) => InitialScreen(),
        Routes.home: (context) => HomeScreen(),
        Routes.changelog: (context) => Changelog(),
        Routes.setup: (context) => SetupScreen(),
        Routes.settings: (context) => SettingsScreen(),
        Routes.group: (context) => GroupScreen(),
        Routes.product: (context) => ProductScreen(),
        Routes.batch: (context) => BatchScreen(),
      },
    );
  }
}

// ignore: public_member_api_docs
class InitialScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocListener<BlackoutCubit, BlackoutState>(
      cubit: sl<BlackoutCubit>(),
      listener: (context, state) async {
        switch (state.runtimeType) {
          case AskForStorageRationale:
            await showDialog<bool>(
              context: context,
              builder: (_) => const AskForStorageRationaleDialog(),
            );
            break;
          case AskForRedirectToSettings:
            var forward = await showDialog<bool>(
              context: context,
              builder: (_) => const AskForRedirectToSettingsDialog(),
            );
            if (forward) await openAppSettings();
            sl<BlackoutCubit>().endApp();
            break;
          case AskForImportDatabase:
            var password = await showDialog<String>(
              context: context,
              builder: (_) => AskForImportDatabaseDialog(wrongPassword: (state as AskForImportDatabase).wrongPassword),
            );
            if (password != null) {
              sl<BlackoutCubit>().importDatabase(password);
            } else {
              sl<BlackoutCubit>().dropDatabaseAndSetup();
            }
            break;
          case GoToSetup:
            Navigator.pushReplacementNamed(context, Routes.setup);
            break;
          case GoToHome:
            Navigator.pushReplacementNamed(context, Routes.home);
            break;
        }
      },
      child: Container(),
    );
  }
}
