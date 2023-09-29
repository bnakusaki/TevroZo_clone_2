import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tevrozo_project_2/screens/home_screen/home_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  GoogleFonts.config.allowRuntimeFetching = false;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',

      debugShowCheckedModeBanner: false,

      /// Theme.
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
        ),

        /// Input theme.
        inputDecorationTheme: InputDecorationTheme(
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(30),
          ),
          fillColor: Colors.white,
          filled: true,
        ),
        scaffoldBackgroundColor: const Color.fromARGB(255, 247, 247, 247),
        colorScheme: ColorScheme(
          brightness: Brightness.light,
          primary: const Color.fromARGB(255, 255, 255, 255), //Color.fromARGB(255, 43, 46, 63),
          onPrimary: const Color.fromARGB(0, 0, 0, 0),
          secondary: const Color.fromARGB(255, 43, 46, 63),
          onSecondary: Colors.white,
          error: Colors.pink,
          onError: Colors.pink,
          background: Colors.pink.shade200, //Color.fromARGB(255, 226, 143, 157),
          onBackground: Colors.pink,
          surface: Colors.black26,
          onSurface: Colors.pink,
          scrim: Colors.black,
          tertiary: const Color.fromARGB(255, 198, 198, 198),
        ),
      ),
      home: const HomeScreen(),
    );
  }
}
