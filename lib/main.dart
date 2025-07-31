import 'package:flutter/material.dart'; // Import ไลบรารี Material ของ Flutter
import 'package:google_fonts/google_fonts.dart';
 
void main() {
  // จุดเริ่มต้นของแอป Flutter
  runApp(const MyApp()); // บอก Flutter ว่าวิดเจ็ตใดคือรากฐานของแอป
}
 
// MyApp โดยทั่วไปคือวิดเจ็ตรากฐานของแอปพลิเคชันของคุณ
class MyApp extends StatelessWidget {
  const MyApp({super.key}); // Constructor
 
  @override
  Widget build(BuildContext context) {
    // เมธอด build() ส่งคืนโครงสร้างต้นไม้วิดเจ็ตสำหรับวิดเจ็ตนี้
    return MaterialApp(
      title: 'My Awesome App',
      debugShowCheckedModeBanner: false, // ซ่อนแบนเนอร์ debug
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true, // ใช้ Material Design เวอร์ชันล่าสุด
      ),
      home: const MyHomePage(), // วิดเจ็ตหน้าจอหลักของคุณ
    ); // สร้าง MaterialApp ซึ่งเป็นวิดเจ็ตหลักของแอปพลิเคชัน
  }
 
  // สร้าง MaterialApp ซึ่งเป็นวิดเจ็ตหลักของแอปพลิเคชัน
}
 
class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});
 
  // ภายในเมธอด build ของ MyHomePage
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Welcome to Flutter'),
        backgroundColor: Colors.blue,
      ),
 
      body: Padding(
        // เพิ่ม Padding รอบ Column
        padding: const EdgeInsets.all(16.0),
        child: Column(
          // ใช้ Column สำหรับเลย์เอาต์แนวตั้ง
          crossAxisAlignment:
              CrossAxisAlignment.center, // จัดกึ่งกลางไอเท็มแนวนอน
          children: <Widget>[
            Image.network('https://picsum.photos/seed/flutter/400/200'),
            const SizedBox(height: 30.0),
            Image.asset(
              'assets/images/one.jpg',
              height: 100,
              errorBuilder: (context, error, stackTrace) {
                // แนวปฏิบัติที่ดีแม้สำหรับ assets, เผื่อกรณีพาธผิด
                return const Text(
                  'เกิดข้อผิดพลาดในการโหลด asset',
                  style: TextStyle(color: Colors.red),
                );
              },
            ),
 
            //ไม่ทัน
            const SizedBox(height: 30.0),
            Container(
              width: 300,
              decoration: BoxDecoration(
                color: Colors.amber,
                borderRadius: BorderRadius.circular(4.0),
              ),
              child: const Text(
                // คงข้อความไว้ก่อน
                'สวัสดี วิดเจ็ต Flutter!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
            ),
            const SizedBox(height: 30),
            // ภายในลิสต์ children ของ Column, หลัง SizedBox สุดท้าย
            Row(
              mainAxisAlignment:
                  MainAxisAlignment.center, // จัดกึ่งกลางปุ่มแนวนอน
              children: <Widget>[
                ElevatedButton(
                  onPressed: () {
                    print('กดปุ่ม Elevated');
                  },
                  child: const Text('Elevated'),
                ),
                const SizedBox(width: 10), // เว้นวรรคระหว่างปุ่ม
                OutlinedButton(
                  onPressed: () {
                    print('กดปุ่ม Outlined');
                  },
                  child: const Text('Outlined'),
                ),
                const SizedBox(width: 10), // เว้นวรรคระหว่างปุ่ม
                TextButton(
                  onPressed: () {
                    print('กดปุ่ม Text');
                  },
                  child: const Text('Text'),
                ),
              ],
            ),
            const SizedBox(height: 10), // เว้นวรรคใต้ปุ่ม
            // ... IconButton อาจจะตามมา ...
 
            // ภายในลิสต์ children ของ Column, หลัง Row และ SizedBox
            IconButton(
              onPressed: () {
                print('กดไอคอน Info');
              },
              icon: const Icon(Icons.info_outline),
              iconSize: 30,
              tooltip: 'ข้อมูล', // ข้อความช่วยเหลือ
              color: Colors.blueGrey,
            ),
          ],
        ),
      ),
    );
  }
}