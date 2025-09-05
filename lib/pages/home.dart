import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';
import 'analysis.dart';
import 'subscriptions.dart';
import 'chat.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String? _picked;

  Future<void> _pickChart() async {
    final res = await FilePicker.platform.pickFiles(
      type: FileType.image,
      allowMultiple: false,
    );
    if (res != null && res.files.single.path != null) {
      setState(() => _picked = res.files.single.path);
      if (context.mounted) {
        Navigator.pushNamed(context, AnalysisPage.route, arguments: _picked);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Market Data Analyst')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('مرحباً وسام 👋', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            const Text('ارفع صورة الشارت ليظهر لك التحليل النصي (نسخة تجريبية).'),
            const SizedBox(height: 16),
            FilledButton.icon(
              onPressed: _pickChart,
              icon: const Icon(Icons.upload),
              label: const Text('رفع صورة الشارت'),
            ),
            const SizedBox(height: 16),
            Wrap(
              spacing: 12,
              children: [
                OutlinedButton.icon(
                  onPressed: () => Navigator.pushNamed(context, SubscriptionsPage.route),
                  icon: const Icon(Icons.workspace_premium),
                  label: const Text('الاشتراك'),
                ),
                OutlinedButton.icon(
                  onPressed: () => Navigator.pushNamed(context, ChatPage.route),
                  icon: const Icon(Icons.chat_bubble_outline),
                  label: const Text('الدردشة'),
                ),
              ],
            ),
            const Spacer(),
            const Text('v1.0.0 • Build for IPA via Codemagic/Sideloadly',
                style: TextStyle(color: Colors.black54)),
          ],
        ),
      ),
    );
  }
}