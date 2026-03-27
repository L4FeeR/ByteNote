import 'package:bytenote/auth/auth_listener.dart';
import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: '.env');
  await Supabase.initialize(
    url: dotenv.env['SUPABASE_URL']!,
    anonKey: dotenv.env['SUPABASE_ANON_KEY']!,
  );
  // await Supabase.initialize(
  //   url: 'https://raxzyoinsmswwbpknsqp.supabase.co',
  //   anonKey:
  //       'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InJheHp5b2luc21zd3dicGtuc3FwIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NzQzNzY3NTcsImV4cCI6MjA4OTk1Mjc1N30.dXP8B561QzdZg1KeIcQ9QjrR93qWp9AwPHbqkRPp_58',
  // );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: AuthListener(), debugShowCheckedModeBanner: false);
  }
}
