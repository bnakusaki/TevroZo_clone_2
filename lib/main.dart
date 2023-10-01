import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:tevrozo_project_2/screens/home_screen/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      theme: ThemeData(
          appBarTheme: const AppBarTheme(
            backgroundColor: Colors.transparent,
            shadowColor: Colors.transparent,
          ),
          inputDecorationTheme: InputDecorationTheme(
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(30),
            ),
            filled: true,
          ),
          scaffoldBackgroundColor: const Color.fromARGB(255, 245, 245, 245),
          colorScheme: ColorScheme(
            brightness: Brightness.light,
            primary: const Color.fromARGB(255, 255, 255, 255), //Color.fromARGB(255, 43, 46, 63),
            onPrimary: const Color.fromARGB(0, 0, 0, 0),
            secondary: const Color.fromARGB(255, 43, 46, 63),
            onSecondary: Colors.white, // ignore
            error: Colors.pink, // ignore
            onError: Colors.pink, // ignore
            background: Colors.pink.shade200, //Color.fromARGB(255, 226, 143, 157),
            onBackground: Colors.pink, // ignore
            surface: Colors.black26,
            onSurface: Colors.pink, // ignore
            scrim: Colors.black,
            tertiary: const Color.fromARGB(255, 198, 198, 198),
          ),
          fontFamily: 'Poppins'),
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        AppLocalizations.delegate
      ],
      supportedLocales: const [
        Locale('en'),
      ],
      home: const HomeScreen(),
    );
  }
}
