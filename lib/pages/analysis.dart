import 'dart:io';
import 'package:flutter/material.dart';

class AnalysisPage extends StatelessWidget {
  static const route = '/analysis';
  const AnalysisPage({super.key});

  @override
  Widget build(BuildContext context) {
    final String? imagePath = ModalRoute.of(context)!.settings.arguments as String?;

    return Scaffold(
      appBar: AppBar(title: const Text('تحليل الشارت (تجريبي)')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            if (imagePath != null) Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Image.file(File(imagePath), fit: BoxFit.contain),
              ),
            ) else const Text('لم يتم اختيار صورة.'),
            const SizedBox(height: 16),
            const Divider(),
            const SizedBox(height: 12),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text('التحليل النصي (Placeholders):',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            ),
            const SizedBox(height: 8),
            const Text('• الاتجاه المحتمل: صاعد معتدل (نموذج تجريبي).'),
            const Text('• نقطة الدخول: أقرب دعم متاح بعد تصحيح 0.5–0.62 FIB.'),
            const Text('• وقف الخسارة: أسفل القاع الأخير بـ ATR × 1.2.'),
            const Text('• الأهداف: R:1 → R:1.5 → R:2 (تجريبي).'),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}