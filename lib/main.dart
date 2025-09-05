import 'package:flutter/material.dart';
import 'pages/home.dart';
import 'pages/analysis.dart';
import 'pages/subscriptions.dart';
import 'pages/chat.dart';

void main() {
  runApp(const MDAApp());
}

class MDAApp extends StatelessWidget {
  const MDAApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Market Data Analyst',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),
        useMaterial3: true,
      ),
      home: const HomePage(),
      routes: {
        AnalysisPage.route: (_) => const AnalysisPage(),
        SubscriptionsPage.route: (_) => const SubscriptionsPage(),
        ChatPage.route: (_) => const ChatPage(),
      },
    );
  }
}