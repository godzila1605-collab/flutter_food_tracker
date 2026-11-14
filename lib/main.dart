// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:flutter_food_tracker/views/splash_screen_ui.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {
  //----- ติดต่อกับ supabase project ที่เราจะทำงานด้วย -----
  WidgetsFlutterBinding.ensureInitialized();
  await Supabase.initialize(
    url: 'https://dnaaxackllwvbzbbjtph.supabase.co',
    publishableKey: 'sb_publishable_RyfPWOFfgrrBFvS__vcTQg_rhbjvhYM',
  );

  //----------------------------------

  runApp(
    const FlutterFoodTrackerApp(),
  );
}

class FlutterFoodTrackerApp extends StatefulWidget {
  const FlutterFoodTrackerApp({super.key});

  @override
  State<FlutterFoodTrackerApp> createState() => _FlutterFoodTrackerAppState();
}

class _FlutterFoodTrackerAppState extends State<FlutterFoodTrackerApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreenUI(),
      theme: ThemeData(
        // useMaterial3: true,
        textTheme: ThemeData.light().textTheme.apply(
              fontFamily: GoogleFonts.kanit().fontFamily,
              fontFamilyFallback: GoogleFonts.kanit().fontFamilyFallback,
            ),
      ),
    );
  }
}
