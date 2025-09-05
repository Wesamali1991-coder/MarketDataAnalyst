import 'package:flutter/material.dart';

class SubscriptionsPage extends StatelessWidget {
  static const route = '/subscriptions';
  const SubscriptionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('الاشتراك (تجريبي)')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text('نسخة توضيحية بدون دفع حقيقي.'),
            SizedBox(height: 8),
            Text('• شهر تجريبي مجاني ثم اشتراك شهري.'),
            Text('• تفعيل الميزات المتقدمة (إشعارات – نماذج تحليل – دردشة خاصة).'),
          ],
        ),
      ),
    );
  }
}