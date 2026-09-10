import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Profile',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
        scaffoldBackgroundColor: const Color(0xFFF9F7F9),
        useMaterial3: true,
      ),
      home: const ProfilePage(),
    );
  }
}

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  int _points = 0;

  void _addPoint() {
    setState(() {
      _points++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          'My Profile',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 18),
              const Center(child: _ProfileAvatar()),
              const SizedBox(height: 10),
              const Divider(color: Colors.black87, thickness: 1.5),
              const SizedBox(height: 14),
              const _ProfileLabel('Name'),
              const SizedBox(height: 4),
              const Text('Diluka', style: TextStyle(fontSize: 17)),
              const SizedBox(height: 24),
              const _ProfileLabel('Email'),
              const SizedBox(height: 7),
              const Row(
                children: [
                  Icon(Icons.email, size: 20),
                  SizedBox(width: 10),
                  Text('diluka.w@nsbm.ac.lk', style: TextStyle(fontSize: 17)),
                ],
              ),
              const SizedBox(height: 24),
              const _ProfileLabel('Points'),
              const SizedBox(height: 7),
              Row(
                children: [
                  const Icon(Icons.star, size: 22),
                  const SizedBox(width: 10),
                  Text('$_points', style: const TextStyle(fontSize: 17)),
                ],
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _addPoint,
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        tooltip: 'Add point',
        child: const Icon(Icons.add),
      ),
    );
  }
}

class _ProfileLabel extends StatelessWidget {
  const _ProfileLabel(this.text);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
    );
  }
}

class _ProfileAvatar extends StatelessWidget {
  const _ProfileAvatar();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 132,
      height: 132,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
              border: Border.all(color: const Color(0xFFE7E4E7)),
            ),
            child: const Center(
              child: Icon(
                Icons.account_circle,
                size: 96,
                color: Colors.black87,
              ),
            ),
          ),
          const Positioned(
            right: 14,
            bottom: 18,
            child: Icon(Icons.check_circle, color: Colors.green, size: 40),
          ),
        ],
      ),
    );
  }
}
