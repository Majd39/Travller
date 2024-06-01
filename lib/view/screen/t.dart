import 'package:flutter/material.dart';

class t extends StatelessWidget {
  const t({ super.key });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ملف الشخصي'),
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
          const SizedBox(height: 20),
          const CircleAvatar(
            radius: 50,
            backgroundImage: NetworkImage('رابط_صورة_الملف_الشخصي'),
          ),
          const SizedBox(height: 10),
          const Text(
            'اسم المستخدم',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            'الوظيفة',
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey[700],
            ),
          ),
          const SizedBox(height: 20),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text('الإعدادات'),
            onTap: () {
              // التنقل إلى صفحة الإعدادات
            },
          ),
          ListTile(
            leading: const Icon(Icons.help),
            title: const Text('المساعدة والدعم'),
            onTap: () {
              // التنقل إلى صفحة المساعدة والدعم
            },
          ),
        ],
      ),);
  }
}