import 'package:flutter/material.dart'; // Import ไลบรารี Material ของ Flutter

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
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrangeAccent),
        useMaterial3: true,
      ),
      title: 'Flutter Demo',
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chapter 3 Lab'),
        backgroundColor: Colors.teal,
      ),
      body: Center(
        // จัดกึ่งกลาง Container
        child: Container(
          // กล่อง
          padding: const EdgeInsets.all(50.0),
          width: 300.0,
          height: 200.0,
          // color: Colors.amber, // สีพื้นหลัง
          decoration: BoxDecoration(
            color: Colors.amber, // กำหนดสีพื้นหลังของ Container
            borderRadius: BorderRadius.all(Radius.circular(30.0)), // กำหนดมุมโค้ง
          ),
          child: const Text('Inside Container',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            color: Colors.brown, // กำหนดสีข้อความ
          ),
          ), // ข้อความภายใน Container
          // Child และ Padding จะมาตรงนี้
        ),
      ),
    );
  }
}
